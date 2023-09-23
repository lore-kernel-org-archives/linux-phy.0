Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BE92CE7A88
	for <linux-phy@archiver.kernel.org>; Sat, 23 Sep 2023 19:11:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NoCN1AxqNfUXczH1e1js5BI8zQ9AnRGrJRx2sFfKAaU=; b=iSlgc7nGCTN9lg
	ciylRpTA6xTQempc7i4Lc03BYwV2Yhdm1ZBLGIX+a6xlszxG/lr858IBaNYtiKiuapncLx5zfgO+Q
	lIXP/6tBHYmzC/02i4eiLQ9DPXoj2gx6kfaeK7B+BJahXlRSSsYCJ6SsBipuI4vWoFZcC/0T62EyF
	2mHTEey6eUq2KdlKG635Zzk/m3BqeUk027Um4hIu/BCMFurJxi2poAjHzEDHEvGBBPU14GAEHK6Jd
	JDiBCS6tOfBcP4t29j+ZIQL4pLARWBvKOQv2/1fK+YDctqSbEjKahg4hwTokDjDMC9Mvdi3E0uZS7
	NBftEBwQH9kVbRcei1Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qk82E-00BMxn-1X;
	Sat, 23 Sep 2023 19:11:22 +0000
Received: from mail-yw1-x1131.google.com ([2607:f8b0:4864:20::1131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qk82C-00BMxN-1M
	for linux-phy@lists.infradead.org;
	Sat, 23 Sep 2023 19:11:21 +0000
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-59be6605e1dso48397377b3.3
        for <linux-phy@lists.infradead.org>; Sat, 23 Sep 2023 12:11:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695496277; x=1696101077; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KgvDrqDkrzGnPx2se7Co4Z7wm0NrGzLKtZpVnYVh4dQ=;
        b=jTbzwRpv6DV5Cv3IMg20rfpsXEIwq4ZGMeaCrg5JHG3YWPIhKVyO9T3rb6c5oX9Wx5
         vLHVFutcvx4vXdXXNCv9otMe01WLR823x7m3Ct/8Na9gb5EfwNL3YwUNAI1CWzMLvwxy
         9JbFoYqY+uESwJhlyoONIyyJ9tC5fOzpCm9z/w3UDVyvce0/Cp/7sp+bhSFbdsYk97ST
         A3kH6BJjfIGx05R0XimusscOCRygkbaWbHnn82dMGwo/MTGYcXA/oEAbSEyYjSWw3gzB
         dAAQAl8vYvXgWkbrofoP3tyVaHapm5iBhVRqCS/uo6ud6aqYjALlrkN9D9/BLzegMjji
         DT8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695496277; x=1696101077;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KgvDrqDkrzGnPx2se7Co4Z7wm0NrGzLKtZpVnYVh4dQ=;
        b=lcI5BRA9v1WETm8RC0++8Dmfc+xend3visiHB7AW94pYLExLGCQQ3FxOZVqWMxRSS6
         yX9fxrpLHeJvRewbdr8G3PfVDL3+HGyKxRp5aBAiAvl79V8MpzTAPjNJsFN/Mk+PLt+F
         sThn4FuOLVDtONQzYaHXSULrjaz4mW0T+RVNJwqM36InPsYsib8E6Q2voLKZgg616Vxh
         Xgrzheib2KcE8wFglt8a2UivgxhurF5+N6T+JmD1ShsxW3HREWeN53acyS1BFtHsep5G
         A8yTPOtXV+l0S/hGOJPS30MAp6TTLv9s9RTOH4bNBLcq4O6qSBRoUpyai7+8BB/3IiX3
         81ZA==
X-Gm-Message-State: AOJu0YwXgJYqzAtHE3ux2ZigAMA7RM9EWUzd3WnUlaEDbxZars/9ODND
	qF61KDkv1XBtcsQURBZlwQY31azKLEj7Vb5N+323zA==
X-Google-Smtp-Source: AGHT+IHF5wC8V+m67IYfQK7achvgkDcmV4m+5WkcmcKITxfnn+5AmqlKIK7XbpogOhMl1yGEyLV29+Ag0oexVGoVZl0=
X-Received: by 2002:a0d:d982:0:b0:59b:eab8:7ac6 with SMTP id
 b124-20020a0dd982000000b0059beab87ac6mr2776188ywe.42.1695496277684; Sat, 23
 Sep 2023 12:11:17 -0700 (PDT)
MIME-Version: 1.0
References: <1695359525-4548-1-git-send-email-quic_rohiagar@quicinc.com> <1695359525-4548-6-git-send-email-quic_rohiagar@quicinc.com>
In-Reply-To: <1695359525-4548-6-git-send-email-quic_rohiagar@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 23 Sep 2023 22:11:06 +0300
Message-ID: <CAA8EJporOrbUuzJk5xbnYYGJ86hfGC3N9x5PyeRqYFtnuAiVJQ@mail.gmail.com>
Subject: Re: [PATCH v4 5/5] phy: qcom-qmp-usb: Add Qualcomm SDX75 USB3 PHY support
To: Rohit Agarwal <quic_rohiagar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	gregkh@linuxfoundation.org, abel.vesa@linaro.org, quic_wcheng@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, kernel@quicinc.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230923_121120_478640_7C99CFC6 
X-CRM114-Status: UNSURE (   7.44  )
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

On Fri, 22 Sept 2023 at 08:12, Rohit Agarwal <quic_rohiagar@quicinc.com> wrote:
>
> Add support for USB3 QMP PHY found in SDX75 platform.
>
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 173 ++++++++++++++++++++++++++++++++
>  1 file changed, 173 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
