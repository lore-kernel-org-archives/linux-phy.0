Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E24EDC44533
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 05:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e0wfMNbijQF6e0lCkz6I6S1mtvaApMDdrIGWqPxRXyk=; b=qDl48zeWBwhCAF
	k8vHwJxQFpPI4Kav5M6KVZlAmBLZftoz/B1iBp6WG4t1Qutykoum5N8bfdu6VPpOoMp9gSZLK1cPn
	2DL2qbr67YvLxmNMIjutJIO5OQyl8L4RaDfR5XQelVntiLDm9ITTvPsefW1+nCRooBMGAG8hOrsMi
	mI81ezPJiWYXACpm1UA4tKeEvtf/GG4DMaA1REtvO1+nfbgu44+vLaZ7MDgus9DK06ueKECUterD7
	HQazc0fVDhyLYs4+8FZoHuq6OQIn9uzET6oHsRytHVbCdYQ/hFbiCanItp+G4jb19stYqsiVma3V8
	e6vBxebSdgg+GuM9rw6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmPrz-0000000AwKc-0BSu;
	Wed, 22 Jul 2026 05:51:51 +0000
Received: from mail-43102.protonmail.ch ([185.70.43.102])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmPrw-0000000AwKG-0lqe
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 05:51:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1784699505; x=1784958705;
	bh=7EWW65TWhQFgLQPj2Wkv861bBhqVtYITBfDqiAmRxN8=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=eLr5Ckm8EKvVt+9shvYM9yYTSn7Jc9du0uSBhGBLgcT66RvEVoe38TFFMjOBW2QRE
	 vvLf3ixJTAe0uef2uutvVe5et6L7nqaKpEPiT/NUE6A+suqBQlygrwLg38Tbr6QTW+
	 5Xw1kJiBMN/ppBwP77dS4mH0cthIj9oM92bfmGeWueIkq3VlC4qDScWSGzE0y1qY8p
	 42tR75tOe91eBddJosYS54YEQnli7/lbf3rRByilB8JSSsKat36G726X9WFPvFiEFz
	 e+/XemSZvM1kOdWieytECYhhoim8lCOZZLZfeJ46rVd7gZN/gO8B5t6xxDtQs404rt
	 xkaqcdJYPwXvw==
Date: Wed, 22 Jul 2026 05:51:39 +0000
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
From: Esteban Urrutia <esteuwu@proton.me>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] phy: qcom: qmp-combo: Specify PLL version in qmp_v6_dp_serdes_tbl structs
Message-ID: <8066103b-e1de-4b20-b21e-533a6cbc2bba@proton.me>
In-Reply-To: <zd5wulhfcw7vzbwaz4akhetbqqub7ygsmexuswkdvzxcfmqvqa@hom4ax54efft>
References: <20260715-sm8475-bup-usbss-v2-0-2d8def39b190@proton.me> <20260715-sm8475-bup-usbss-v2-2-2d8def39b190@proton.me> <wg6lgpaexz4ktjlfzqpsidj56wr3hjax2ktn75kqsoaubtdxre@xh3yn3xpr4af> <b77dc15d-f9ad-4c06-9e24-8f73421e2130@proton.me> <dph6cacosw3jzksqxp7fgofdueukrq6a3c5xys4jfrkqjuigvx@sroivvrxiwxk> <47b1db2c-6314-49ce-a7b9-f68eeb022295@proton.me> <zd5wulhfcw7vzbwaz4akhetbqqub7ygsmexuswkdvzxcfmqvqa@hom4ax54efft>
Feedback-ID: 147889766:user:proton
X-Pm-Message-ID: 67d6104ff7e818c69f7a2fef9f4052ef51b91cb8
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_225148_835671_41032518 
X-CRM114-Status: UNSURE (   7.82  )
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

On 7/22/26 1:34 AM, Dmitry Baryshkov wrote:
> Yes, because the platform has different refclock. 
Sorry. I think I've lost the thread on this one. From what I've
understood:
- For this commit, v1.1 tables should be left as is without renaming
them.
- For the third commit, v1 tables (DP serdes, RBR, HBR, HBR2 and HBR3)
should be added along with a comment in the driver explaining the
reason.
 
Please confirm if my conclusions are correct or if additional changes
will have to be made.
 
Regards,
Esteban


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
