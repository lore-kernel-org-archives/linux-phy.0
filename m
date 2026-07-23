Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BEA2C4453A
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jul 2026 02:10:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3K8Clr5PIcatlUK5xfdDZ8YtMkBZ/0Q97NGmbEsPFd0=; b=tXXb+PzB240e8C
	DpzgrsdBHHCopjfBPnKbRzc6cU02HqtB7eKmKGdIMD5gAl/8mMypj9Ic3tzBjoVrGejW4DcsC6oj9
	jnbj3M/yRG5mXudHX19mp5CuF3WoGLCL75qvymCh+bzpYUsp+kbc4Icr8b0C7F7cI1mfCVZp54SYM
	TEEqbmzqG2Dc4JiKXxkGjErscLjxYDoNCKaWHmFQ+zyycX5+ZYxa45YozZK2NMZJzHyXBBFKQnksW
	KqGzYvGE+tfibe3qABMe4mDYqUN8hEMHgaN3EpG7U4pIrvRIx5Gp3Wnzj80h8LqAAbyWqB4gWvBAy
	y6K/WupfeT7FQldsrSjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmit2-0000000DC7i-10Yl;
	Thu, 23 Jul 2026 02:10:12 +0000
Received: from mail-24417.protonmail.ch ([109.224.244.17])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmisz-0000000DC6f-3pxY
	for linux-phy@lists.infradead.org;
	Thu, 23 Jul 2026 02:10:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1784772604; x=1785031804;
	bh=oVQd39UDoufgoPV9MVO4P+cpqxa0bAHqW7i0Rkg/YGU=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=Gou67e2JwKJubJOBbgNhPt9ddH9BdMnn3uAbU/yk7ErAmNFJruEKvDQwQihJIMRwb
	 IVtVfAkB68ospeZqahuvcPj8724RU1lVU59jfhvVRtESjVYfuK/dBjgtyKnCsyr0lA
	 JNQqeiN08tXEMTGoXeHHrskcUGb75HKPTOeejxvduf99u8Ct8iVyrMNJZ1C4GGklte
	 23ubij355ipibb3WNpivu/9oK2XlE02nHj9Z48aRFRpV4uN7u83VD3Kjbt9cb9N0vK
	 VqERUepy/ak0xgI2FH7mxZUW4zcDwDegmMaMkp4tkzpqDVM8NoI6uwFBQ4uWhyi1Vp
	 KMkS8TVWiTyAw==
Date: Thu, 23 Jul 2026 02:09:59 +0000
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
From: Esteban Urrutia <esteuwu@proton.me>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] phy: qcom: qmp-combo: Add SM8475 support
Message-ID: <9e85cb8f-fe99-442b-a516-46dee7f72a12@proton.me>
In-Reply-To: <20260722-sm8475-bup-usbss-v3-2-0dd5da218ab2@proton.me>
References: <20260722-sm8475-bup-usbss-v3-0-0dd5da218ab2@proton.me> <20260722-sm8475-bup-usbss-v3-2-0dd5da218ab2@proton.me>
Feedback-ID: 147889766:user:proton
X-Pm-Message-ID: dfdf654f40cd626fe20093bccce809bd06340ed4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_191010_587313_D1D14AE2 
X-CRM114-Status: UNSURE (   7.24  )
X-CRM114-Notice: Please train this message.
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

On 7/22/26 10:00 PM, Esteban Urrutia via B4 Relay wrote:
> Some SoCs such as SAR2130P, SM7550, SM7635 and SM8475 use 4nm-v1 PLLs.
> For SM8475, trying to use qmp_v6_dp_serdes_tbl structs (which are for
> 4nm-v1.1 PLLs) causes link training to fail because of ref clock
> differences, which in turn makes these structs differ.
> Add structs for v1 PLLs as well.
Taking a look at commit 545069bcf39e ("phy: qualcomm: qmp-combo: add support for SAR2130P")
it would be great if someone could test these changes on a SAR2130P
based device, since qcom,pll-version is also set to 4nm-v1 on this
platform as can be seen in [1].

[1] https://github.com/LineageOS/android_kernel_qcom_sm8450-devicetrees/blob/lineage-20/qcom/display/display/neo-sde.dtsi#L69

Regards,
Esteban


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
