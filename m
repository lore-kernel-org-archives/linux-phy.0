Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89735C43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 03:19:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vWocGhClbcP6hm0HZhVawawlPNqDMd3rpa2VWKXsCGU=; b=LdkrQWTVRcUc6J
	wapMB1xVDlPYpN4cNkmiWY/pgGGmau96n2yhzcN4urL4KgBqGUr/jx/Glqx/+FlIIGPZrVrY4JWRW
	UkcIaJeSNuyNeoMOsdnco3HzN1uJbObb8E7CB8nG2CQHJePS5ZwExE8JsK4lp9ku4bZbEMgexcwSt
	r6jGrbK1QUpptNoYotK5vVpfw2topVJgABqR9FfCH7P0ednnGIyEz564Epx0+k7C0OCT1d9O73PJl
	ly2/EUdNmEn2H+X/IviZD6tFXKcC3X72O2TtYhM4YyEthkOhKw4x+FyGQxWuIODsz73jtL5j7hBfr
	gmCyPH9Sbm6enNdHwD5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgwLO-0000000Dzvn-3kMd;
	Tue, 07 Jul 2026 03:19:34 +0000
Received: from mail-106121.protonmail.ch ([79.135.106.121])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgwLL-0000000Dzv5-3xto
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 03:19:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1783394367; x=1783653567;
	bh=w1WW+Rf6WB8PFdRwptz/r6ZcYQos2RZ0HVWaAzzGe6E=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=DcqEiGqwnDffW849Ke0oHoSASXiFHyxSPGSBoDRPf3AoHMJX3sFX6Pias03dc2HK1
	 1JlCZOYHH2vYfe2M59WIyY7bocfkr83QQ10VOqckrDq+sN534l+fh7tr3IZ/HuLNaC
	 r0xCZ8vIEkccxDCvWDYWig3aItBqrpImSWDoxG3spZHpfCbCBtiiAAQO1kb8On4V5o
	 GW86fXwNbPYZ1ocx26EhShmIqqlYQ4Kt+joWExfvdXcrH/8/F6AfqsT3GXUvUFSrpd
	 /zfoEyblg26Vmeuw7oTXFpSb9kGtmWwBf9lWRU1U9RlX0++cJ8E6NxM4f/R5GWmPVb
	 kcifZz5w0+Ycg==
Date: Tue, 07 Jul 2026 03:19:22 +0000
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
From: Esteban Urrutia <esteuwu@proton.me>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, Bjorn Andersson <andersson@kernel.org>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Rob Clark <robin.clark@oss.qualcomm.com>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, "Joerg Roedel (AMD)" <joro@8bytes.org>, Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 2/8] arm64: dts: qcom: sm8450: Remove unneeded reserved memory nodes
Message-ID: <c11f9ddd-8533-426c-8a88-0ed461f6a30e@proton.me>
In-Reply-To: <4g6y4q2udludhwmoqc34afwj5svra4a4j5bmpqza7h3av2oov7@6k5r7a4meruk>
References: <20260622-sm8450-qol-v1-0-37e2ee8df9da@proton.me> <20260622-sm8450-qol-v1-2-37e2ee8df9da@proton.me> <e1e492ab-884e-442b-8410-cc100c54fd5f@oss.qualcomm.com> <6123a923-21dd-4f69-9ac5-02165963027c@oss.qualcomm.com> <b3541802-3035-40ee-8327-a65bd5d2dfee@proton.me> <4g6y4q2udludhwmoqc34afwj5svra4a4j5bmpqza7h3av2oov7@6k5r7a4meruk>
Feedback-ID: 147889766:user:proton
X-Pm-Message-ID: f44e9ea796ae9a36b6ac3c3fb88470b5693b7329
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_201932_617151_99187C65 
X-CRM114-Status: UNSURE (   7.57  )
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

On 7/6/26 2:24 PM, Dmitry Baryshkov wrote:
> Please verify that you can actually access those areas (boot with
> memtest=1)

Thanks for the suggestion!

I actually did boot an SM8475 based device I'm mainlining (motorola-bronco)
with this parameter.
Deleted regions in DT are as follows:

/delete-node/ &mte_mem;
/delete-node/ &oem_vm_mem; (seems to not exist in SM8475?)
/delete-node/ &qheebsp_reserved_mem;
/delete-node/ &trust_ui_vm_mem;
/delete-node/ &trust_ui_vm_qrtr;
/delete-node/ &trust_ui_vm_swiotlb;
/delete-node/ &trust_ui_vm_vblk0_ring;
/delete-node/ &trusted_apps_ext_mem;
/delete-node/ &trusted_apps_mem;

Here are the results:

[    0.000000] early_memtest: # of tests: 1
[    0.000000]   0x00000000808f4000 - 0x0000000080900000 pattern 0000000000000000
[    0.000000]   0x0000000085200000 - 0x0000000085700000 pattern 0000000000000000
[    0.000000]   0x0000000087f00000 - 0x0000000088000000 pattern 0000000000000000
[    0.000000]   0x000000008b91c000 - 0x000000008ba00000 pattern 0000000000000000
[    0.000000]   0x000000009ff80000 - 0x00000000a6e00000 pattern 0000000000000000
[    0.000000]   0x00000000a6e40000 - 0x00000000a6f00000 pattern 0000000000000000
[    0.000000]   0x00000000a7000000 - 0x00000000a8000000 pattern 0000000000000000
[    0.000000]   0x00000000ab350000 - 0x00000000b70cd000 pattern 0000000000000000
[    0.000000]   0x00000000b70ebdd1 - 0x00000000b72ce000 pattern 0000000000000000
[    0.000000]   0x00000000b7fff000 - 0x00000000b8000000 pattern 0000000000000000
[    0.000000]   0x00000000b89e3400 - 0x00000000e0600000 pattern 0000000000000000
[    0.000000]   0x00000000e0b00000 - 0x00000000e8800000 pattern 0000000000000000
[    0.000000]   0x00000000f1400000 - 0x0000000100000000 pattern 0000000000000000
[    0.000000]   0x0000000800000000 - 0x000000083af00000 pattern 0000000000000000
[    0.000000]   0x000000083b500000 - 0x000000083d300000 pattern 0000000000000000
[    0.000000]   0x0000000840000000 - 0x000000097f089d40 pattern 0000000000000000
[    0.000000]   0x000000097f089d6f - 0x000000097f089d70 pattern 0000000000000000
[    0.000000]   0x000000097f153ff8 - 0x000000097f154000 pattern 0000000000000000

The device didn't crash at boot, and everything works as expected.
For the record, the manufacturer has made changes in downstream device
trees that state TVM is not used, so it's expected that the device works
without QHEE and TVM regions.

Regards,
Esteban


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
