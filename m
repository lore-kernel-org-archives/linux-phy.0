Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB275C25B74
	for <linux-phy@archiver.kernel.org>; Mon, 27 May 2024 09:12:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IdLDEORPl89sFdPBUjmAdqrxJl0Mdpb6trOGtdMqlJQ=; b=mRCkrCzU2etSGb
	ZOxrfSeQe7zW00VEFJvMlTjYbuW5cZ8Qbv5LftfdZ9dkOmb98QiOPkqsoV21+EPS+biVsJVe4JfQC
	Mw/5tON5jBs5M8jSZeUEficqQWk3CDtWLrDcpx6TgYlsi2VeLsOLbjebQw/p/HretOe6R0BAccKyO
	mBMNNcqa2nYQib6MfQZ7owuJaKiEgbv2Qm8UVrM7ninrTQZkc15Tps5IrGFw2xnJH3b673riXZxHv
	sOAWV+KB/KNuCbLHd9R/b0+IEEHiIQbiecy65p+JSqt5oD+shwZ+BZAJOd8CB08weihM8NzDvSzMx
	iMB7gzMHcJ5rUx3izrlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBWOk-0000000EMWo-2jpq;
	Mon, 27 May 2024 09:12:06 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBWOi-0000000EMWI-0QFs
	for linux-phy@lists.infradead.org;
	Mon, 27 May 2024 09:12:05 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-5295ae273c8so3159318e87.0
        for <linux-phy@lists.infradead.org>; Mon, 27 May 2024 02:12:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716801122; x=1717405922; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nUzLCXQfyvzXsr//tlfSdUGJTNMyFZqlL5VzENiEL3M=;
        b=FWbg1wUf//GzO1cQcrFYAF+erWS1M0Dk62oB7iyu8SzVq0ML6QgjNbwNOvI9UhDm0e
         b/b4BD5zVYDRwSE36nfsY/8yNpMQ6XpCafiZKrCmZMxbnxKMTdkU8MFeVbPHNqy+PntO
         YkjtAQRvxvDwUHFpsbIY0pAfxcGc7iRttIqDLBpaBijWI8E9l+0ao8LUFmbaZnM+8KZ3
         s1f8b8I5UCpHPZof/VZhVtyaKpy2+K9AhSl74namRRl4uVQYZVnB02gK9izZaNT8Eoo0
         6D/3o4N0pBXbJLZhF3mF/4dERl6+nHWvqwd1UBuxiL/1Bz3sl7GK345lqNiqFjUvyfrm
         HQRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716801122; x=1717405922;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nUzLCXQfyvzXsr//tlfSdUGJTNMyFZqlL5VzENiEL3M=;
        b=h1bj8Q14KWN6PhFVwRX/tQwF2/eoiRJSNGXMFUAmRzGkeZ/lZzkvCugU6pBVjDukqF
         suL3BEB0elKnkEdZSjLkBpcBL4eb/xhfa0Drf4ReFH/xJ1+JWk3cQcZ4bvQJdBpz5Zid
         eld5KPBGB38aTwNrotblGMoFUgmw5HxmJU02gj4AeJweimqMOROWZke/fCni0gkGHTjg
         CZCgtHDyM4dQIUxbOswnDwSXjTo3sntAyuj1H/eTuarTpD//sYJHmydvgqfUeprT5IXE
         ce5qV2NNtuvGnLOXpYG0HMXa0QJ9/yAkWhxt+5TKZAtjmqSyAiG6otuZUnO91KUosGjW
         qmWQ==
X-Forwarded-Encrypted: i=1; AJvYcCUbz2BdjQcZ2S6N8mKRRtw8FKBLj769A3I+AS+I0yvh+USarRslG+IxfajLgzMRN1ojswGLwLC3JLJ5iVu6LgRl2q2pM9vqHy2DT5TByw==
X-Gm-Message-State: AOJu0Yxs4rVwTHlZcRxmfUqzUfvH6gxnqLjLKU1GPPmvA+f2J1qhbgGd
	mH8s9Gddtzbj90iTakP3uXLEhlLLye090nOEiVp3bpNrN32fYnQYjRJah4aXTOI=
X-Google-Smtp-Source: AGHT+IGZUS1FjnbDcOXz2+j+YI5pdcfqWxmUeNluNfPOnSp6/vDkxvdWPICE9xHhyGrzoIUDBj6LNg==
X-Received: by 2002:a05:6512:2395:b0:528:9d15:240e with SMTP id 2adb3069b0e04-529663e6272mr7225372e87.43.1716801121977;
        Mon, 27 May 2024 02:12:01 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5297066b21dsm526727e87.173.2024.05.27.02.12.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 02:12:01 -0700 (PDT)
Date: Mon, 27 May 2024 12:12:00 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Kuogee Hsieh <quic_khsieh@quicinc.com>
Subject: Re: [PATCH 1/3] phy: qcom-qmp: qserdes-txrx: Add missing registers
 offsets
Message-ID: <z5niadir2squ2hxthp7t4f3eijczd26q4l5l6sk6qd4zzafiah@epcsoym66hcq>
References: <20240527-x1e80100-phy-qualcomm-combo-fix-dp-v1-0-be8a0b882117@linaro.org>
 <20240527-x1e80100-phy-qualcomm-combo-fix-dp-v1-1-be8a0b882117@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240527-x1e80100-phy-qualcomm-combo-fix-dp-v1-1-be8a0b882117@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_021204_174142_D9A75BDB 
X-CRM114-Status: GOOD (  10.72  )
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

On Mon, May 27, 2024 at 10:20:35AM +0300, Abel Vesa wrote:
> Currently, the x1e80100 uses pure V6 register offsets for DP part of the
> combo PHY. This hasn't been an issue because external DP is not yet
> enabled on any of the boards yet. But in order to enabled it, all these

Nit: '...in order to enable it'

> new V6 N4 register offsets are needed. So add them.
> 
> Fixes: 762c3565f3c8 ("phy: qcom-qmp: qserdes-txrx: Add V6 N4 register offsets")
> Co-developed-by: Kuogee Hsieh <quic_khsieh@quicinc.com>
> Signed-off-by: Kuogee Hsieh <quic_khsieh@quicinc.com>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_n4.h | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
