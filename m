Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D877C44512
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 05:27:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2oHhd52SHQkv1uEnYpYG1185UMhQ9gYik7mJ3126Tco=; b=bmQrZjgURO0ViU
	usyTyJAnUpaDl0rOoo5YsQlAry4u3wVxf4/4tF5S+V0/Hq/Qw0sHOAj3l28a0sybLSdKY8JgMrxYw
	k+5raZow2d5OCEE2p5UtWYL93LbEh54guvWJ2lvTw9AKB67V5PIrtrvYCobx9MFVFAD26/zpLYbHB
	neTSLK1s+sSbFH1zB9RaSQfIHbDRQKL3ILWuecEIFI2Rth54CWarfdUeOAWKpwyawma6U3binw1Qe
	CwhEHBkSMqiLTjXLIE98oLAtFdNDU9WmBYO/4doYIMF3Btyw3GmEQHrJcoU6VMI3Bxs9Rk84Pr8X1
	ZFLmWiaC1Wj04ZBQfIBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmPUm-0000000AvRN-1icw;
	Wed, 22 Jul 2026 05:27:52 +0000
Received: from mail-244123.protonmail.ch ([109.224.244.123])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmPUj-0000000AvQV-024S
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 05:27:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1784698064; x=1784957264;
	bh=cI/qXI5aIOtv67IxgQsQWkvSxybRIeo9UIqFM/YYosA=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=nsHIgWf2mOwt/IYjw6I0iqkXQQekTDShR3GZuubpI11aEwtV8197WvjlCciGGrBDT
	 XgpzyqbsYi87zv2uvLvmE2YZZCRzdCwN5HMnafQESiJm5ROGz5S/MumFVk9qLpRJqj
	 kPdMGjoXb+y/G5L2N3BzcAykgSnwQMNMSFH9iPgguIZsCXhMJ55aQmyPiNV+6vsm5Y
	 GJAO3802WtiXFNMgUv8UngbJbm1KSEgaaRKS+L6yNwibqzOop3JTwrbO5rZZ7Mg60j
	 l5H0ZDZMF54VGJRhVbvgaJPpN7xGpfyrbyeL71jSO+Z2XZ15DtHgy93DvmjSePWLTy
	 v1TSErY0FLIWA==
Date: Wed, 22 Jul 2026 05:27:39 +0000
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
From: Esteban Urrutia <esteuwu@proton.me>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] phy: qcom: qmp-combo: Specify PLL version in qmp_v6_dp_serdes_tbl structs
Message-ID: <58edef55-b513-4ccb-a384-64f2ee7e0250@proton.me>
In-Reply-To: <dph6cacosw3jzksqxp7fgofdueukrq6a3c5xys4jfrkqjuigvx@sroivvrxiwxk>
References: <20260715-sm8475-bup-usbss-v2-0-2d8def39b190@proton.me> <20260715-sm8475-bup-usbss-v2-2-2d8def39b190@proton.me> <wg6lgpaexz4ktjlfzqpsidj56wr3hjax2ktn75kqsoaubtdxre@xh3yn3xpr4af> <b77dc15d-f9ad-4c06-9e24-8f73421e2130@proton.me> <dph6cacosw3jzksqxp7fgofdueukrq6a3c5xys4jfrkqjuigvx@sroivvrxiwxk>
Feedback-ID: 147889766:user:proton
X-Pm-Message-ID: 544f5ece5549d5872eeeeab0d457c91d6fe6892b
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_222749_687407_0F9B4815 
X-CRM114-Status: UNSURE (   7.88  )
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

On 7/21/26 9:02 PM, Esteban Urrutia wrote:
> This does not seem to be the case...
> When HBR2 is used over a direct Type-C to Type-C DP Alt Mode connection,
> link training fails when v1.1 tables are used instead: 
Expanding on what I said in my previous email, here is what happens when
certain tables are used.
 
- v1   DP serdes, v1   RBR/HBR/HBR2/HBR3: works
- v1   DP serdes, v1.1 RBR/HBR/HBR2/HBR3: doesn't work
- v1.1 DP serdes, v1   RBR/HBR/HBR2/HBR3: works
- v1.1 DP serdes, v1.1 RBR/HBR/HBR2/HBR3: doesn't work
 
The third case is interesting. I'm inclined to believe it works because
the only difference between v1 and v1.1 DP serdes tables is the value
written to the BG_TIMER offset.
 
Regards,
Esteban


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
