Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65861606A328
	for <linux-phy@archiver.kernel.org>; Tue, 20 Oct 2026 11:51:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=szUyBuzu;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=X5Q+GuNf
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W6C0ZbI+RSufuyWHEfKBnIWQCELi0mXzorlnesUbxFE=; b=szUyBuzuLB3Mie
	9fOiQAcRobhxwS5gAtzcoX7sDyAxATVuGvC/U9xxpeYE6mSXEq0MSx6JbKuFoz+/WBraGS6iY091O
	QrubhdFqEfspFKYEJ0I4eGZGP3e4+4gJH7zmqLiDQJUOlYJYPPTkGx/a1MuszpYt8CMRsNUVRIE/3
	3zDrIsr/XGFPGJmghd0ZW9yQm3WvaZCSPjtxyr6Q4WE+kvmun4h/UQ6GhEaM2suD7gcVVG09OhZkB
	H66XwA8eoH5N/XrV6W5vW0QmD0yFnqZ6LCmEiMg1X+TX+tJTCO8uMNygVJ/EGuUpzmEASBJcist7v
	oGQKVCQ23yhQi9XobvdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ8NF-00000009alf-04CH;
	Tue, 20 Oct 2026 11:51:21 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ8NE-00000009alS-17xc
	for linux-phy@lists.infradead.org;
	Tue, 20 Oct 2026 11:51:20 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 652C860098;
	Tue, 20 Oct 2026 11:51:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C6841F000C5;
	Tue, 20 Oct 2026 11:51:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792497079;
	bh=v+poDdCMqQMdpLhxPUAROlDMmt9p0JT0iZceQMYjtOE=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date;
	b=X5Q+GuNflO7uInKcvLeh4NoPPJJ11XgkvXO4nd/e7DAbskiV/bprsQqHBb/C/kimw
	 dfl7V8D1T0Uv69T7fLhL12TIjZvI8xAPHA6kKAzkaKI9ZbmoAiygGbLCbQjYBSGoRr
	 9n1OKlm2hrn7MDyrzAZUyOAFccJik+5LFSH/YGy2UFdc/mGA5Q4GKPqqQffR3UG7DX
	 LjJzFauFsvEnlMHXmUtcZT9uwLZJGVNMMIOtWIvzw7GFJXT+nRAIba/utUt0I6arCA
	 miF1RIBrI02DrpoYgs0P2Tx2r8SLa4EBxOxGbRxZkoTFRcfOZymY1A1vEUflFwWvhE
	 JhynWPB5l0zbw==
From: Mattijs Korpershoek <mkorpershoek@kernel.org>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Maxime Ripard
 <mripard@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sriram Dash <quic_sriramd@quicinc.com>,
 Shazad Hussain <quic_shazhuss@quicinc.com>
Subject: Re: [PATCH v6 2/2] phy: qcom: qmp-usb: Add support for SA8255P
In-Reply-To: <179216560275.106618.16177081518764116321.b4-reply@b4>
References: <20261002-phy-qcom-qmp-usb-8255-v6-0-bb7dfc5636b4@kernel.org>
 <20261002-phy-qcom-qmp-usb-8255-v6-2-bb7dfc5636b4@kernel.org>
 <179216560275.106618.16177081518764116321.b4-reply@b4>
Date: Tue, 20 Oct 2026 13:51:17 +0200
Message-ID: <xhkdb5wyw4mkq.fsf@mkorpers-koolstof.csb>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Fri, Oct 16, 2026 at 21:16, Manivannan Sadhasivam <mani@kernel.org> wrote:

> On 2026-10-02 11:39 +0200, Mattijs Korpershoek wrote:
>> From: Sriram Dash <quic_sriramd@quicinc.com>
>> 
>> The Qualcomm automotive SA8255p SoC relies on firmware to configure
>> platform resources, including clocks, interconnects and TLMM.
>> The driver requests resources operations over SCMI using power protocols.
>> 
>> The SCMI power protocol enables or disables resources like clocks,
>> interconnect paths, and TLMM (GPIOs) using runtime PM framework APIs,
>> such as resume/suspend, to control power on/off.
>> 
>> Power domain "core" controls the GDSC, resets, and TLMM (GPIOs)
>> whereas power domain "transfer" controls clocks and interconnects.
>> 
>> In this variant, two disjoint sets of resources are modeled against
>> the power domain suppliers which can be turned on/off to achieve modeled
>> device states. Two modeled low power states d1 and d3 are supported.
>> 
>> transition: d0 <--> d3  :: both core and transfer suppliers
>> transition: d0 <--> d1  :: only transfer supplier
>> 
>> Signed-off-by: Sriram Dash <quic_sriramd@quicinc.com>
>> Signed-off-by: Shazad Hussain <quic_shazhuss@quicinc.com>
>> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
>> Signed-off-by: Mattijs Korpershoek <mkorpershoek@kernel.org>
>
> Same comment as the other series.

Yes, thank you. I'll work on the other series and once we have something
that's good there I'll create a v7 here.

Thanks
Mattijs

>
> - Mani

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
