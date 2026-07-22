Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B18F9C4452D
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 00:20:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=76Ll5hVU8sZ0kBJQdS5qpwFpHVVoIGK/s1k/wVHcY1c=; b=q0BB4lSn0rEkiy
	hJs0Ark15IF9A0q5A5BFse/5KHJvH6M5+f7rEf3DAnfvTMYtepJXF/QXoPnZWCLaLjghHH5vedbby
	5+oLMBIkyq5h/eHvGalEqE+rZ1/sqD8bVGzvTpTvGqEEzTNKSBfbgmXvxclikoINLcM9W04eSFG9O
	PFJtZnLfYCrQpClTl1lm6souOhb9240iyq/u4Yw4fGLm4dT+w0fOf8lmYE2MPzG/93s8oFdW2uT+D
	HDRXxxdnQ4NS8q80DP/H0oeOEj14Sgf8f2pwBg9Wz3J3wMAo+n5zebLUsfNggznkKE6FKseaHf3GC
	ixMy+bj3RmiyytU3xjqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmKhE-0000000AdjJ-1s83;
	Wed, 22 Jul 2026 00:20:24 +0000
Received: from mail-4316.protonmail.ch ([185.70.43.16])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmKhC-0000000AdiT-3oAA
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 00:20:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1784679620; x=1784938820;
	bh=unF5Uaa9ZTeyd0Kwkv0mOhsPHEUxmYwOn+gAEV/HIiI=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=Sp54rczBoWPcwqqcVawTUHcu6mlG4PVmIW+gGKTADmS1+1fpiw29GUx50a99ud3LH
	 JBS4kXOZ6olNl/kuX2bYp3DIycWuzPtN1f5bRkCPcowLrSVY+BjBwbvnQpyAOW7GAd
	 N2JrPOTJ8LLzThA8WfMVTNX6qHep/qGELOAW/aM3CslMt7m0VRUT+hlzghMPPIcfaq
	 sod3FFOK1ml+CZwNCiSRkpoDLG4HpJros0lUau2CukZXAEwgvoMNb0UGP73NlnsJLG
	 sdx0DLkCvoXbZy1H0SKm2YXCmm8mW5/B+e9DdPyeLpxGlOtsUj3mj1M3p7CtXIgEcu
	 ZXXlUx5sUqx2w==
Date: Wed, 22 Jul 2026 00:20:14 +0000
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
From: Esteban Urrutia <esteuwu@proton.me>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] phy: qcom: qmp-pcie: Add pcs_lane1 offset to V5 offsets
Message-ID: <e317c50b-287a-4e78-b045-3ca723c1fbbf@proton.me>
In-Reply-To: <vnqbthpnjfgwm3bsp3lysfhugxfljd3cictjmwvn4kuavytvmt@lwkhsuydhamk>
References: <20260715-sm8475-bup-pcie-v2-0-48bd91a19abf@proton.me> <20260715-sm8475-bup-pcie-v2-2-48bd91a19abf@proton.me> <vnqbthpnjfgwm3bsp3lysfhugxfljd3cictjmwvn4kuavytvmt@lwkhsuydhamk>
Feedback-ID: 147889766:user:proton
X-Pm-Message-ID: acce97e3e67ec2402053c1223b98d9eee3a4faae
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_172023_118894_CF125D3B 
X-CRM114-Status: UNSURE (   4.04  )
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

On 7/21/26 6:51 PM, Dmitry Baryshkov wrote:
> Fixes: 0fd0b31965b0 ("phy: qualcomm: qmp-pcie: add support for SAR2130P")
Thanks for adding Fixes :D
I did see that SAR2130P also specifies pcs_lane1 but kind of forgot
about it...

Regards,
Esteban


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
