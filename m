Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 332F2C02182
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jan 2025 10:55:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UukkuQsIciH1Has9eE3Vatqk/qfzJa1dLc3VnOGX5Oc=; b=yoTyQrha7bpc5g
	yuxVPY+fML47uVH044ooAdH3aJO/+9ep8J0QQEX5muwixwwHcFhGiBtoK19v4M3NWKDR06WiNsrPs
	kQ5hipym1XZ6mHOBzXUkp+QUj9/zRrg47N4o6A/dVBJMgmvKV7PW6gTWu8KOJTDzlHxuToqRjb5At
	jjgKAZjGiNmzfmrHtK0bTX+kZ68jby4xqYV+UiMsVn8bjd309fl3hMZEi0Prhca+Xaii+QzMWdveB
	GHkvKOgiA3BxidrR3LFR+5UUf7Sfs6yg2vpWxQl7TQiQKd2F/fVqViJu1v4v0XOZmy/72zJmHjagx
	UPvFtdiHGPEjc3xePIMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1taBua-00000007fOL-425z;
	Tue, 21 Jan 2025 10:55:12 +0000
Received: from mail-yb1-xb2f.google.com ([2607:f8b0:4864:20::b2f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1taBcd-00000007c04-3iog
	for linux-phy@lists.infradead.org;
	Tue, 21 Jan 2025 10:36:41 +0000
Received: by mail-yb1-xb2f.google.com with SMTP id 3f1490d57ef6-e3a26de697fso8495446276.3
        for <linux-phy@lists.infradead.org>; Tue, 21 Jan 2025 02:36:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737455798; x=1738060598; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uYsSfRqNJj8o50shO4MnohJQTF0XWyzFd4qo9Nzg2zA=;
        b=fgzEdDJol6ZwgQ87g6FDcMPLfg4cW37vVFPpAPJlS+Zgfr0J2zXf86KGg721c808g3
         Olfx9kclYNm1Ce5TzXY3uymY56qMixOUNRUzIGrg30FWn/fu499sS20Zb2PPCnyy7EZI
         /OWlDjt+aZDS017U9X9DJdG81jYgxISKfDQvvDpB7uW/owhAoeog9K0nbsWp0oLwBrgN
         J8ZbcSbYlFZRaff7MyZCVyp0buQHulu+ZLJRSpvLMObWaJG2KwSmk1FrqvoY0kfe7IW8
         d5Y6HjeaIRdajYK4yU2bjYjiYTXEidNypbyH5NVhZuOncaw/XxLQJUJVEhNmj3aJcFbC
         l8bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737455798; x=1738060598;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uYsSfRqNJj8o50shO4MnohJQTF0XWyzFd4qo9Nzg2zA=;
        b=NeKBbbmrSm8i19fjCa2LAkyIUd4HFzXd+U1C/ZMi8Ajzs+a9ii1a7hszjr2wAR+4k8
         MA05i+l93FzejnZgzGOiIn2GuBBwX6WTh7kth2defT/UaVwX2ZwqQ3y5+kOHmBL8iNg/
         VcPv6Qat0t7inQfQWBW1a8HqGgD3p3NZAhPyHlJN1LBHaBwb9lO59P4FJ2BxXEUfCWaT
         2AbnRwMimy3Q8gYngHBXAFlghJLtYeM7wXwJn8jBrDJVYnwhXJAFNiqaB0syZUG7Ik38
         yMmS+fZcfncCocGskel8Ct18I1NnULMcPUlG1DZE3LxMgQXZP6zuQp/Yvv5yeLpm/Z2V
         OrQw==
X-Forwarded-Encrypted: i=1; AJvYcCWiSeKMOxwqQpMVdr/eLgNayKtiyx+J2nBTyFpg+/N9jSooJ7XK4hUTqqdnrqyiZKfbCb/lu26AxOM=@lists.infradead.org
X-Gm-Message-State: AOJu0YypvMJMmZPnhC/flAWVALLjapo98wj7KAhFq5j4KfLSWX/f9QsX
	sM8FaV1k8RsEkgyW7Vthkv1kl35+ElC4HWOxA2wCRfk69ernP2WdpX23+4iVR9Zmi5DfdE5gX6l
	uWJxJgyEE5rN8hFOki455xYKHSVDNvz8BDi9xdQ==
X-Gm-Gg: ASbGncv6FkI3A6KW7mtJZXf2X7zBRLMBQnvn2H2wh7yUHKNqPR4oVefnV+DTExROjl0
	TOrPFsiWwLYryvXw5EAsPZWHPGSOBTsYZXJ6bZG2hLYWExXhL5Byq+/0OhU+Cdce8fA==
X-Google-Smtp-Source: AGHT+IGgc5DuaN4EVnKxaaNEieV/Lsus7ZftrBH6yEeXwAV7YxRfKF3ABKJD1IwgaQXrf81aL3myamAyLAsDHtu6Hno=
X-Received: by 2002:a05:690c:6b0a:b0:6ea:7b00:4aa5 with SMTP id
 00721157ae682-6f6eb93266dmr122701137b3.33.1737455798645; Tue, 21 Jan 2025
 02:36:38 -0800 (PST)
MIME-Version: 1.0
References: <20250121094140.4006801-1-quic_wenbyao@quicinc.com> <20250121094140.4006801-3-quic_wenbyao@quicinc.com>
In-Reply-To: <20250121094140.4006801-3-quic_wenbyao@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 21 Jan 2025 12:36:27 +0200
X-Gm-Features: AbW1kvaQ-0WRKtcJxgbDZ6H35o106sf53x8vunv0kmHF65XxhI3rh4OAJPGvtrk
Message-ID: <CAA8EJppXQpDrdXzJsTE7HWs=POt7yFAw0JVZFabN6Ks3fhZiWQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] phy: qcom: qmp-pcie: Add PHY register retention support
To: Wenbin Yao <quic_wenbyao@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, p.zabel@pengutronix.de, 
	abel.vesa@linaro.org, quic_qianyu@quicinc.com, neil.armstrong@linaro.org, 
	manivannan.sadhasivam@linaro.org, quic_devipriy@quicinc.com, 
	konrad.dybcio@oss.qualcomm.com, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250121_023639_928875_BECED5F0 
X-CRM114-Status: GOOD (  15.80  )
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

On Tue, 21 Jan 2025 at 11:43, Wenbin Yao <quic_wenbyao@quicinc.com> wrote:
>
> From: Qiang Yu <quic_qianyu@quicinc.com>
>
> Currently, BCR reset and PHY register setting are mandatory for every port
> before link training. However, some QCOM PCIe PHYs support no_csr reset.
> Different than BCR reset that is used to reset entire PHY including
> hardware and register, once no_csr reset is toggled, only PHY hardware will
> be reset but PHY registers will be retained,

I'm sorry, I can't parse this.

> which means PHY setting can
> be skipped during PHY init if PCIe link was enabled in booltloader and only
> no_csr is toggled after that.
>
> Hence, determine whether the PHY has been enabled in bootloader by
> verifying QPHY_START_CTRL register. If it is programmed and no_csr reset is
> present, skip BCR reset and PHY register setting, so that PCIe link can be
> established with no_csr reset only.

This doesn't tell us why we want to do so. The general rule is not to
depend on the bootloaders at all. The reason is pretty simple: it is
hard to update bootloaders, while it is relatively easy to update the
kernel. If the hardware team issues any kind of changes to the
programming tables, the kernel will get them earlier than the
bootloader.

>
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> Signed-off-by: Wenbin Yao <quic_wenbyao@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 91 +++++++++++++++---------
>  1 file changed, 58 insertions(+), 33 deletions(-)
>
-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
