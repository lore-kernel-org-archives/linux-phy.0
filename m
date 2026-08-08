Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4066C5AD2B
	for <linux-phy@archiver.kernel.org>; Sat,  8 Aug 2026 00:09:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bGF71Tf3yQJm8XHeWPtV3+kGM1VGGgfTLW1aTtHY8rw=; b=SHg/DBbnzhXI66
	VN0K8g7znpwij3EFhKYAGurnFDkMzbeEUPZcCFseuVGg3PdLFUEzf1UEMW1QUlzoWMt0jiEowyAlT
	4Ntl9bUG/v33McB9LyFGUb8jAD7hrJzCm4Yr24hukKnB3ox4PvbY/EozUuKFE8mYCfYIGhL4mzPSX
	w6x21ErExG1qt6rgFE8AA0KD+1+TTXL0hVdFnbynsw0SAOwbod6NUE/pUad7LGewaVRmcbSOu9wql
	bsjA9F952JAwAAEphemMUWQK5NDJMdGun1ziNm8aojn1DF4tc792HabUX0e0P71H8X3VIgCsHGCbZ
	JOUT20abvXzTjaXI957Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsUd4-00000008tkv-46Sx;
	Sat, 08 Aug 2026 00:09:35 +0000
Received: from mail-43101.protonmail.ch ([185.70.43.101])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsUd1-00000008tk6-0oML
	for linux-phy@lists.infradead.org;
	Sat, 08 Aug 2026 00:09:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1786147764; x=1786406964;
	bh=lDRaQu6/9wkhlDCv2yTHfkldEo5fvukdaDSbjb18JJE=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=H0Midps+lnpM9dRKAzZs8LO8dpNxkBv/G9YcUw0UkuZN/5JCwuC8erTfZRGrIw/zN
	 oTReXtNmVQKNncv6ZY6MBoXdCECZ/gC+a/g4UWmzLPa/Q6haSPqm+5dbbUMYKQMqzn
	 Sj/Jn6DdVr1j+OS25MljK+RJA+wnLYbtT291XFBHcAhZI7TcBT56vgJhnXGflGBSZ3
	 8c6Fz2KQEw7FD1HmHJyLk9FlqPrYIJ8iQQS7Ld7ImgZfDh1E/OFzr7TEJy3KrS5tNL
	 la0xbLjQuPYFpEvt9nD5W9fj5dyfCjrr7dUiuHscI+3AAKwQ3Ka5HqozecSRuiShVk
	 aadVyZFjCN5qQ==
Date: Sat, 08 Aug 2026 00:09:16 +0000
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, Dmitry Baryshkov <lumag@kernel.org>, Bjorn Andersson <andersson@kernel.org>
From: Esteban Urrutia <esteuwu@proton.me>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v2 2/2] phy: qcom: qmp-combo: Drop qmp_v4_calibrate_dp_phy
Message-ID: <32cfbf72-f2a9-4919-aedb-49f76a400362@proton.me>
In-Reply-To: <20260711-sm8450-qol-qmp-v2-2-d14353bd6ff4@proton.me>
References: <20260711-sm8450-qol-qmp-v2-0-d14353bd6ff4@proton.me> <20260711-sm8450-qol-qmp-v2-2-d14353bd6ff4@proton.me>
Feedback-ID: 147889766:user:proton
X-Pm-Message-ID: 650ffaff1a53d7802a9dba88bf6b3af193d76c97
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260807_170931_851786_A75C0620 
X-CRM114-Status: UNSURE (   7.46  )
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

On 7/11/26 11:13 PM, Esteban Urrutia via B4 Relay wrote:
> From: Esteban Urrutia <esteuwu@proton.me>
> 
> There are no downstream device trees that specify five values in the
> qcom,aux-cfg1-settings array.
> Plus, after cross referencing both downstream device trees and entries
> which refer this function, only 0x13 is specified.
> Since 0x13 is written at initialization time, drop this function as a
> whole, and remove now unused variable assignations.
> 
> Fixes: aff188feb5e1 ("phy: qcom-qmp: add support for sm8250-usb3-dp phy")
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Esteban Urrutia <esteuwu@proton.me>

Could this commit in question please be picked as a subset of this
patch?
This commit should have been picked along with [1] since
calibrate_dp_phy is not present in it because of this very commit.

Regards,
Esteban

[1] https://lore.kernel.org/linux-arm-msm/178603357411.674490.11520339407340817802.b4-ty@kernel.org/T/#t


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
