Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3507BC64EC4
	for <linux-phy@archiver.kernel.org>; Wed,  8 Mar 2023 13:27:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PF0/GdpHR7OQpM38aLPkMFsH1sU0+qullwD7oa5clC0=; b=lGPBK2IOLZo28y
	MF3zDYdC72stesWsT1qgBze6dEFd4jGp4DhZ+lWEsq4DugqRH/yh+r+zmhy9zdNvZxCODWHXKMzzv
	UUMb3kWg9ZCR4P3XjQXewMiI7X//p6dZa5zJ+cd9csBGlf7/3JY750o8DLd9meXMdae9yTQWaRa7G
	shD8W0fdVTJ5aVQzS+/nt6vMI3HrTpl6Q9wN3oRN+o9cAhgZsD1xmyQIDiWiNB3zpbTxGNF1DU20O
	C1h4aItu79q8zGK+zlndZ4ysxf6cgbaAnqBQ7rDxBe3NfXjY7HSy3mguFP17yIMs64sU9a+Cj66t7
	a1PBmIdzsrI1R2KEN+6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZtp8-005C7f-KE; Wed, 08 Mar 2023 13:27:18 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZtp6-005C6q-Kh
	for linux-phy@lists.infradead.org; Wed, 08 Mar 2023 13:27:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 6CE84CE1F17;
	Wed,  8 Mar 2023 13:27:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6F74C433D2;
	Wed,  8 Mar 2023 13:27:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678282032;
	bh=zPgPnfEx7TTfrpkIeqTBW0I7Azvx8nMPmWHtRyKCwJE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PFA7LXhTxi7fZ0XL539AtLSO14qzEVc3qRSHZy8NzpDARtmQqjMxzVgOIO/i9razz
	 9SqttdgquWwv3rVzJ83PZ9Ply3rP+zSq5Wo9Od0WkyYzSRgsIJTya8mmsfggl/ITnb
	 HrIc39qcOOnH3pFuQAn7ju2jrrVGxwqNUWj8gKyaFrb9QmYvb51CIyEhvCbHAT7X23
	 byaEILnWonIBblDNm5t4/oVA5/NoRc68LykNHJvOIrIPkO6KHM5jh2RT+1MJH+570D
	 6u5b7X1/sKTIRApWNN534etwOZWnFezOiNFNfnHgjivzezXlnwHHd3ZRbsyAZwE8ad
	 K+Ey++rv4dnyA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pZtpm-0006Xi-Px; Wed, 08 Mar 2023 14:27:58 +0100
Date: Wed, 8 Mar 2023 14:27:58 +0100
From: Johan Hovold <johan@kernel.org>
To: Lux Aliaga <they@mint.lgbt>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, agross@kernel.org,
	andersson@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org,
	kishon@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
	bvanassche@acm.org, keescook@chromium.org, tony.luck@intel.com,
	gpiccoli@igalia.com, ~postmarketos/upstreaming@lists.sr.ht,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org, linux-hardening@vger.kernel.org,
	phone-devel@vger.kernel.org, martin.botka@somainline.org,
	marijn.suijten@somainline.org
Subject: Re: [PATCH v7 3/6] phy: qcom-qmp: Add SM6125 UFS PHY support
Message-ID: <ZAiNXmbep8nR6nkj@hovoldconsulting.com>
References: <20230306170817.3806-1-they@mint.lgbt>
 <20230306170817.3806-4-they@mint.lgbt>
 <25c17af5-8f6b-a2c3-dab3-f9bc69711db7@linaro.org>
 <ZAhrT1ICTQjfdeGq@hovoldconsulting.com>
 <64ab4061-6a8b-662e-1c7a-99b0da26751c@linaro.org>
 <ZAhwTcMZoCQVULQe@hovoldconsulting.com>
 <DE127158-6956-42E9-B7AE-9687B4ABD6DA@mint.lgbt>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DE127158-6956-42E9-B7AE-9687B4ABD6DA@mint.lgbt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_052716_863994_26E8D837 
X-CRM114-Status: GOOD (  12.50  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Wed, Mar 08, 2023 at 08:37:48AM -0300, Lux Aliaga wrote:
> On 8 March 2023 08:23:57 GMT-03:00, Johan Hovold <johan@kernel.org> wrote:

> >It seems a previous version of this patch was merged almost two months
> >ago.
> >
> >	9b9e29af984c ("phy: qcom-qmp: Add SM6125 UFS PHY support")
> >
> >Not sure what failed here.

> Yes, but it received some comments regarding using v5 offsets instead
> of v3-660. I could spin off this change into a new patch if necessary.

Once a patch has been applied, you generally need to do any further
changes incrementally on top.

It seems Dmitry renamed the struct himself after the patch was applied
in this case.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
