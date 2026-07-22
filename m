Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68445C4452B
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 01:02:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vkZTHO/C8B0bUW/+Uhp7OY8GjVYRvOQllQmi89gn6ow=; b=apKewf6Lu3matV
	B5eoDXGbxMrqGGkyVA1DmI+6mCJzjXF60YJgQKIsbjQHY9TdahDjKimCIrmp59qxF/qr27SawqMlT
	TO2K1YmrBpr47Ydvm4MhayHQf2xmrv6UsZr1kEnV3pIr3szwpoIw8p7sAgJLyCF4edkKANiJQl3E/
	jbzxhJ02bF/aXMn3ty9GOd2hLh3amC1aQ3c5CM63J4K67IATRy9AdvpNlNRa/KPhdpmVZ2nv2rMhL
	z4vKVgMyAEG2A05fZnkdJOdnqJg09P1OS+1gXyupi2Fhlld0uvBY35qr9te2qg/aTeK/VUX/B7+QX
	bT8BZLvNyXmwIn065gCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmLML-0000000AgSC-44oZ;
	Wed, 22 Jul 2026 01:02:53 +0000
Received: from mail-4322.protonmail.ch ([185.70.43.22])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmLMI-0000000AgQo-3Er8
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 01:02:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1784682168; x=1784941368;
	bh=zmUeWeO/5cXvxrXTIphGl85xjfF+DcvBD4+OKrDUNio=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=SI3rS2+DTnliZxpV8gjOQhm/BnmBebiQp/F26MAi5VNIvbcaS9qXb33i4kgLMpglK
	 zgZqOsrJdBM0puXJQ0wbM1RcXLqHCt29o9Y0mDGsjN8woRqvVgbSoZ+grXosw2cZVr
	 7nBeyhrQSAt2J1YQJa11hApiX5SmYQh/jghLMUtVpBxnmny8zcuNDrjapgzmRWBCj5
	 qd5QxncCRvGHzjubEwFqiWb8/h6tTs3+lmY5jShJgDvdQtL889Fsa5cYEgfMPuzn29
	 9+/mhaTbJ9SIeQn2P7EGvDb/cAi7IMwo+TxiSGyAfWQE4/qlLGY6E/+shB+fNSc9+q
	 2pnryZ2FGMHlQ==
Date: Wed, 22 Jul 2026 01:02:40 +0000
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
From: Esteban Urrutia <esteuwu@proton.me>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] phy: qcom: qmp-combo: Specify PLL version in qmp_v6_dp_serdes_tbl structs
Message-ID: <47b1db2c-6314-49ce-a7b9-f68eeb022295@proton.me>
In-Reply-To: <dph6cacosw3jzksqxp7fgofdueukrq6a3c5xys4jfrkqjuigvx@sroivvrxiwxk>
References: <20260715-sm8475-bup-usbss-v2-0-2d8def39b190@proton.me> <20260715-sm8475-bup-usbss-v2-2-2d8def39b190@proton.me> <wg6lgpaexz4ktjlfzqpsidj56wr3hjax2ktn75kqsoaubtdxre@xh3yn3xpr4af> <b77dc15d-f9ad-4c06-9e24-8f73421e2130@proton.me> <dph6cacosw3jzksqxp7fgofdueukrq6a3c5xys4jfrkqjuigvx@sroivvrxiwxk>
Feedback-ID: 147889766:user:proton
X-Pm-Message-ID: d0641d487f73adafd5e390dae0e487ae27b72b8f
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_180251_460351_5360EDD5 
X-CRM114-Status: UNSURE (   9.08  )
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

On 7/21/26 8:35 PM, Dmitry Baryshkov wrote:
> Quoting commit b5383dbae381 ("disp: msm: dp: add pll params table for
> 4nm PHY pll settings") from the SDE driver:
>
>     Because of changes to ref clock frequency, few of the pll
>     reg values are different for kalama compared to palima.
>     This change differentiates between these two 4nm versions,
>     based on pll revision and also introduces a pll reg table
>     to differentiate the values.
>> So, I assume, that v1 vs v1.1 is a clumsy downstream way to specify the
> ref clock differences (which affect those tables).

This does not seem to be the case...
When HBR2 is used over a direct Type-C to Type-C DP Alt Mode connection,
link training fails when v1.1 tables are used instead:

Jul 21 20:56:39 esteuwu-phone kernel: [drm:msm_dp_ctrl_link_train_1_2 [msm]] *ERROR* max v_level reached
Jul 21 20:56:39 esteuwu-phone kernel: [drm:msm_dp_ctrl_link_train_1_2 [msm]] *ERROR* link training #1 on phy 0 failed. ret=-11
Jul 21 20:56:39 esteuwu-phone kernel: [drm:msm_dp_ctrl_setup_main_link [msm]] *ERROR* link training on sink failed. ret=-11
Jul 21 20:56:39 esteuwu-phone kernel: [drm:msm_dp_bridge_atomic_enable [msm]] *ERROR* Failed link training (rc=-104)
Jul 21 20:56:39 esteuwu-phone kernel: [drm:dpu_encoder_phys_vid_wait_for_commit_done:545] [dpu error]vblank timeout: a0821300
Jul 21 20:56:39 esteuwu-phone kernel: [drm:dpu_kms_wait_for_commit_done:527] [dpu error]wait for commit done returned -110
Jul 21 20:56:39 esteuwu-phone kernel: [drm:dpu_encoder_frame_done_timeout:2731] [dpu error]enc37 frame done timeout
 
> I'd suggest adding the comments about 4nm-v1 vs 4nm-v1.1 rather than
> renaming the structs.
Regards,
Esteban


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
