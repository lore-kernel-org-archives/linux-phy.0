Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02AF7CC6B38
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 14:55:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NlkBVyTCg7yX8J69I16pRKYq1qjJyJZB59zlImzLc5I=; b=EFp3DcSiSUeh4/
	Bx4kap5rfaDqL3oWXjIIAAPu/JFCVyxnO3KhPg+wldscbeI4nIbWV3bWv0h4Zoth/Bo0J0dI+e/I1
	k42x+Hoq61IFwLXS2lNO7O1oggm4RVB0vilvSRBLc83ZrGvj4tNep7XG4ZYaIPePNpxm2yZoLWFq+
	nZ5jp3soVmxXA4XrM13IWpfuj19j5WUuGzh/xP0hsPGAzWgOn6P8BAQGvTBABnJDH+EIxxgLaykyD
	HjdYUdKhUmBeS37ymVLBUCsQPeX2MLHNStzo6InE7KfCd9HLYbf3SMPF8GLOz9J/Zo+ED2QLQbexA
	3/c55LXE5znFd5zIdj/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHjLI-00000003DA7-2qfD;
	Fri, 16 Oct 2026 14:55:32 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHjLF-00000003D8u-0bWc
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 14:55:31 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-4a02667ccebso490195e9.0
        for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 07:55:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792162527; x=1792767327; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=oDjufEIvnKCHnzQuqZKJsy8InAts45tbC4Yhybb8ScI=;
        b=k4z4guRjkQpM/RRZsacAuAZ1IkQfCOoOHG6tYQaa0mfrQzrmgcfwT4/TFTtzIkQ0Tf
         LklgGkF5eYueihUoFNfB0PypWyLXZXmsrOYlk1cQT9UjIB0103Xcg6PsXsuONyL7bMSv
         LXX5X5EmrTjbYniGRXqWVDHfopyKXvqYd+ncT4MSckbQVAjOTLruNqRNFU43hDzPlv1Y
         sUzWxq8EhYGanEcDWeKvk4qSvwMrkwFRQWqJwdUQRwVSRm44sWZ681LBm4YguHxt+l9T
         bemmp3WA+AE1WkrAswK23IcDGPPcnGSiedwpFMNT5Wpw/Jujbs1tL0jxxv2VBb32Daf6
         BjQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792162527; x=1792767327;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=oDjufEIvnKCHnzQuqZKJsy8InAts45tbC4Yhybb8ScI=;
        b=wyw5mNqKzoclRGBMOg1b2RKzMw0wLnxlvRFte1zSa78OFjqGtAdT1m8AT/YFnsqOV9
         N4zHC/AgPWah55O0WKPZAYB3xYfyzPcJlUfh1jZJcN29r6hZO2nc/5xI9OrkF6gZhSwT
         XnkWz6GQ7k++eeW6Z/XYU0Ibqy9nI01WjTTSihTz/GvPFgkYdQMciozzy2rLdTonxycr
         H/YOQDkr0Qqo2ZVVO5P9Parn0uVUXk9NUVFBwOMqLVW0AiVzDgHq0ZkMTuvAcsCqNGSw
         SeAWLEGh27Ft8vjL3Xy9hSIR+pk8X4+C+3VMYaaoGab4dFQh/k8nqB0XHndWm3dn6Rgs
         V0lA==
X-Forwarded-Encrypted: i=1; AKwUvBywvm1Sjor0wVhaoB5Ob/1LfZEOfofhciFex34maiOs6yehGlhpQ0tFbTzhkW1654H+1LkGhadAFl4=@lists.infradead.org
X-Gm-Message-State: AFq9FYKGHkqlX9Ko7FI6j5hw/ILJBqbSfF62wpodvXjaHaviX/Sf4Fw3
	oUQw2Sm4b+6EHFaRTb+TUVYmiwas/WQv/P/2xFC9Zkg809KcUKIeRy6F
X-Gm-Gg: AYBFou2Rsu10uE7FtYXQ/PXE5t0gmaH+kClUZ+mNWZMtDo7ajQl8GktcFJoBytFYfcc
	3CsOgGfiMaLGXS20YhIj3fPzvvojAGrT7giNJohtCUBNtjIL6qJ4QUc7V+lmpWFQlwiexpnMdMI
	vwDH5teX0c66TiNRKAMCquQCp4Afhcs08GE6eJoULRSiRlE3qcnCEokmbUXcjIXO7nLiukNwRpC
	NixRCompkTL5IzdOnl8LOF/ExrwVjy0AjJ0hu42hgvgSuCi5+FhPEm7cV7ygh4aokOp+ppF5Ybh
	zQwJIUxHZHA3FnM+TiIgQmE4u0O0Vy9Tph9dxsNXW0vpY+MLcki0TlFhvN82EusuufUk4ArS+yL
	RZ9iYvwALL5I1dvFaiXnakZMOH6VglJoc97i2VgmTbRaq0fGo4/WnXLRB98rnQbH6mUJzlaAyNk
	l8A6d4OzTXTwAsovhwbHXSURSrq7kLmcQHpoTtCsC/F5DMKhK7h1WBf7RdJK3+EbHYho32/qX36
	7Qr6GdfO/AT/iZoiU2PxAg/0Xp2PgYWB91FGyN9DOb1ufKGZ4WJ4HMyDpJl/4XafFNeMkN3UFFC
	/a0hGQw=
X-Received: by 2002:a05:600c:4ec7:b0:4a1:d537:1c8d with SMTP id 5b1f17b1804b1-4a1d760410dmr1027935e9.19.1792162527070;
        Fri, 16 Oct 2026 07:55:27 -0700 (PDT)
Received: from SP11X1e.cable.virginm.net (cpc99340-croy26-2-0-cust244.19-2.cable.virginm.net. [80.193.62.245])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48dfd4ecac3sm6026423f8f.27.2026.10.16.07.55.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2026 07:55:26 -0700 (PDT)
From: George Neacsu <geocausa@gmail.com>
To: Bryan O'Donoghue <bod@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	David Heidelberg <david@ixit.cz>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Loic Poulain <loic.poulain@oss.qualcomm.com>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
	Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
	Suresh Vankadara <svankada@qti.qualcomm.com>,
	tjose@qti.qualcomm.com,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-media@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC v2 0/4] phy: qcom-mipi-csi2: C-PHY for X1E80100
Date: Fri, 16 Oct 2026 15:55:24 +0100
Message-ID: <20261016145524.36641-1-geocausa@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <efe328a8-83d7-48bc-bf45-90f3535e2657@kernel.org>
References: <20261016-x1e-cphy-rfc-v2-0-377654253193@gmail.com> <b96649d9-5c1c-4fc0-a77d-d0076cf80b86@kernel.org> <20261016113259.40819-1-geocausa@gmail.com> <efe328a8-83d7-48bc-bf45-90f3535e2657@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_075529_989824_A857973A 
X-CRM114-Status: UNSURE (   9.78  )
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

Hi Bryan,

On 16/10/2026 14:27, Bryan O'Donoghue wrote:
> The bit I'm a bit alarmed about is "stuff was stubbed" which makes me
> wonder if what lands in -next can then said to be actually verified
> meaningfully.
>
> Could you git rebase linux-stable/master for your 7.1.5 tree maybe ?

Rather than rebasing the 7.1.5 tree, I built next-20261015 itself and
booted it on the Surface Pro 11, with nothing stubbed. On top of it:
this series as v3 will post it, David's v9, the two CAMSS patches from
v1, and the sensor patches under review (IMX681 v8 with its C-PHY RFC,
OV13858 power-on v3 and its DT support). The board DT is out of tree and
follows your x1e80100 camera DT v7.

On that kernel:
- front IMX681 on CSIPHY2, one trio at 2.4 Gsym/s: 3844x2640 at
  30.01 fps, and the sensor's colour bars are byte-identical to the
  reference capture from the out-of-tree driver;
- rear OV13858 on CSIPHY1, four D-PHY lanes: 29.90 fps;
- the settle count reads back 0x1c in all three trio registers, which
  is the computed value.

The same boot also turned up a NULL dereference in the CAMSS TPG test
pattern control, unrelated to this series. I will send a fix for it
separately.

v3 will describe exactly this setup.

Thanks,
George

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
