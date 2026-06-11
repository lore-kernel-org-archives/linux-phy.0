Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10113CD98CC
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jun 2026 10:56:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ejwhmpBzBrO4YXMArouT0vprfGrEk+r8e47YEsTjBSA=; b=bKJHscJsfp//Vx
	EPmzCW00dC/xgVrmlaEjbreTDc4u05TFnJolawifQIxwWAKenst+ktthhr2ILrdwt2iDIx5K7q+4i
	Dg3sd0sHZSqubkX4CJihBbn1jRCkVFbVo7fiuq2MpNM1XAB27xip5+i0ZrKyaaS5ytOeceQBNE9WQ
	9v+5NtyG2xpxJTzOhkJ0o+2FWHHjgVuV+F/E/LZlA5/o4vrS4ldE5ZGhllme1yAmNUOFR2I34DqNw
	zkI51blFyrTr2eCMXY6aQZQZUPfUVSlA2wSf+Hn1B/L4oU+Hb9Svb9f8EqAyZqMlbGrpQfXiy1ELW
	VYTpYoh+mWcrkxM5UdzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXd56-00000009GXp-3RA7;
	Thu, 11 Jun 2026 10:56:16 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXd54-00000009GWT-1Q1a
	for linux-phy@lists.infradead.org;
	Thu, 11 Jun 2026 10:56:15 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-68ced97b6eeso10589114a12.0
        for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 03:56:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781175370; cv=none;
        d=google.com; s=arc-20240605;
        b=S6sz0DGDpkn3LsqJLVEW6FOgAJwz26EV3Di7l74/8JvmXQA0EApfiSEchzn0zXCaKh
         eHlc5UgYs0P9edyn7+pBH5fe9i6kDE/P1RFZA9QBicqneKW3//ABBl2ResNeWipYB9v7
         Xdo28rA0p8IM6ITD6ImxtbaXvm49E8eSrQsS+xdIlWsn5ljjW4NGBTLapuh6NOBLb8Jk
         Vz5UXKF4u6s1GkaXh7EauPvu4E3Wrm6iX9jWGBPFl4qaBOoE7DGO+4UlaTk0D+uEt3QI
         SzgdethTPcHyvBNCpQT23wW+56KmOKVwcTwKbRaMFB7g9yjHtDOzxvgVyEhiZd3pMLFO
         PRAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=luwhS5VkVprOXRSpKOHs4TEOxJfjtiFwMOP/OMytiOg=;
        fh=Sk0shTyfK3UnZUtOYDL+/IThA/ucAFrqZ1ZYxwmVrXE=;
        b=SWdJwGY9pMZ5jbRHCJmfBPcE5MPoiSpBNOpyc9LvF6LMpBlJWAXkB7KL98d2RL8cZf
         I24mfyG+niywFf8db2oT338JhXOCbszzrJ/QWAJyYpvK6blFJrr8Ap00WMYUmXAF7Wcn
         yXRWTZdsQLWWi+5mOga4mE+XuVfEq2AKnZzMHklkhFOK+5l9F7EDk98oYCwX3sAMZ7Mk
         tVaYamk25JzCmHx1kEE53ldTpUSi4dkO9f1hmLAG0B8uLJdLq+ZV3cEaw0qwuDo6KQVG
         3H/8LYpTzLMYlB401XdXmZZedZawQYhLuXStqIte9eTa6SGAx3dMVtyrlaYQwM77voRX
         OO3g==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781175370; x=1781780170; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=luwhS5VkVprOXRSpKOHs4TEOxJfjtiFwMOP/OMytiOg=;
        b=hFqb1HJGU6IRjOssgFNX+s+zE6kij32DmP9ZfzwFAaTDta6+h+rgu03RD2hg3dHQ7X
         x+XNX62F9Pqx8qM4csURXu9Z/0ToVGMvPTvzTVr0N7Ij6NlshXXOvPJkitoIzItaWUxB
         eNReYdH8JnBpYv8Wu5pscfK0/VeUEaYQyvef6Co4Belgrfo5/Tm5wi8OGuSzyzXLfqfZ
         N2+7rtQu8bsD18hyULYrjQSVScZopOnzePSxSFnDkSv/DPQn41jIXuohsyjnEmZuMRCO
         rKkl+Z4I6e8REfaQltNJi+vmZoE6poSL4bL624HpGy1GQhZi6B+2fTxvt53pPNnYSofu
         ucRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781175370; x=1781780170;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=luwhS5VkVprOXRSpKOHs4TEOxJfjtiFwMOP/OMytiOg=;
        b=CfNC9/v3u6JKxEMwA/g4zt0DoNGXuG/l0WMtXJy83SpGvhg/pdNQvZJ8wRZ2yjh5r6
         n2JxuJZekN4Dhw13cfqI30WXlzzqjbDgAuVdXHRg82/xl663igK3EwCz2p6WyCruRWmv
         k2pyHzSe4cSn9avOWjovda8qVL5ehNfZJ3fJR7cb+Z9AjlFmvyDUqLVMFT2kjxHNs5yB
         eCSxxCvVV+t+GW80rjsmObvKyXc9huf6dQWucxMMXuRjC2pLB+umRIu13eHkD0J0cdg/
         R32Yzm8ozEmSMtrn2FqAKRakdrF/TwulD9AnDIIJPPtt3fsXz4nQGu612436UG1kYN4B
         DOjQ==
X-Forwarded-Encrypted: i=1; AFNElJ+3kNPO/EDWsISysq7/VXV/UZOINvVKDI7lY2JJ8LZNdtx4J1ooK3DNDvM3BGizBH5r5BcJlC2jMb4=@lists.infradead.org
X-Gm-Message-State: AOJu0YznsOTOV2dqkZayKGHP9N/oJiKdqyVnGzCotONpRNDrOyXXWrVe
	HSrOPfqNEHDu1u+wZhHd6Iw6krmJ/Z74WfyeytzLKssvDPqHiuF4zb4CMqWbX0CyaLgYer44vav
	j6dYHBy9ZDRBZvA92zhQuWLM8szGRYn8=
X-Gm-Gg: Acq92OFtJPjq6vhSv2+mDYrRhbcIjXCJydtkU8CR8NNslrnYRlODOyQby3361v8ObD2
	wjjOf1uzsaS7hEBeHZch4p37APmdtEIMFpX8/oCdJpxOlQ6WArMAbQUK3aLukTb3sctHUWyaWYE
	QILnVd7HWu1PLgxojeyuV+r57ylx9Z96ByAkiqvxEzItOGej0vHtPX5HbTmDqRr/tG9Gqpvovz7
	BBC+H2dqHXVTVYuAnbonqT+6ddpxvtMnMfAmFOPhdpuQgNNgltQKpXGqzS2WmF2Jfq28AK8xGXx
	XC12EYY2wVeGax1g7zdz2dPHziRJAdv9WUXmEeY1jvvwE/VQIzIZGOLA/LOKtS9YOEIFcmxTRhi
	C1cIm4QFRi8/Uo5E=
X-Received: by 2002:a05:6402:1469:b0:68b:31c5:86f7 with SMTP id
 4fb4d7f45d1cf-6930e32ca54mr1052454a12.16.1781175370165; Thu, 11 Jun 2026
 03:56:10 -0700 (PDT)
MIME-Version: 1.0
References: <20260610-a14-himax-hm1092-v1-0-0c9907da47ed@gmail.com> <8be0a964-e2fc-4c0a-a5ca-0e9e42b3d747@linaro.org>
In-Reply-To: <8be0a964-e2fc-4c0a-a5ca-0e9e42b3d747@linaro.org>
From: Ramshouriesh R <rshouriesh@gmail.com>
Date: Thu, 11 Jun 2026 16:25:58 +0530
X-Gm-Features: AVVi8CeoYZl3tGdsy3kf7c0CBQMbyXc8Ifs4B6x18dtA99RJC4z5NJ6-soBhOkM
Message-ID: <CAJTcUFSLoQN0Opn_2LY1QT3EiSo7+nybebbOoscUSaTWF_HGAQ@mail.gmail.com>
Subject: Re: [PATCH 0/9] media/arm64: HM1092 IR camera and ASUS Zenbook A14
 (X1P42100) camera support
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, 
	Loic Poulain <loic.poulain@oss.qualcomm.com>, "Bryan O'Donoghue" <bod@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Aleksandrs Vinarskis <alex@vinarskis.com>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_035614_393991_A3EAE12F 
X-CRM114-Status: UNSURE (   9.55  )
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

On Thu, 11 Jun 2026 at 15:31, Vladimir Zapolskiy
<vladimir.zapolskiy@linaro.org> wrote:
> This patch should be removed from consideration, since it is not based on
> the upstream codebase.
>
> I'd suggest you to upstream the sensor driver only through linux-media, which
> is patches 2/9 and 3/8, all other changes should go only after it.

Will do, thanks. This is my first submission, so I hadn't realised the
sensor driver should go on its own. For v2, I'll send the HM1092 binding
and driver as a standalone linux-media series, and then I'll post the
A14 DTS and
PHY enablement separately once the driver and its prerequisites have landed

--

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
