Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4A0BC25B75
	for <linux-phy@archiver.kernel.org>; Fri, 31 May 2024 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QDTJb8fJqID/NhK0KUg8NBD/cYyTX1lPvFC1KvvQWv4=; b=FfI5NFtoeiRexq
	rQ4p6HQajBo5AcTWfSTs9g+/cNWVoe/JLL+TW78+vrmCSPGpZD6oRoGao/UhIktfsFpWZpIuNK1IQ
	waimv4/4DK5aBC+lMp3dFHACIaALECv525IVPRuNgnBUPDwiYCD77fgtO5UBAZ0B5szlj6APpWx+D
	XY7OLwlKkG3KexjRc1OL4+uHCrTI691iwbH1Von3rRAt57SEtytcu2qiAZEbuY26kEWkTdoMswPqz
	n53a3Y5MaxZq0MjiagoFduoFBwXa5ZqTorSHZK3lih8yZ+88XLNtNjU2OvoaD6BtrEliZDTJxN1kL
	2I6cl+PW2ShBR9Cuimzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sD8Gn-0000000BJPU-1YoZ;
	Fri, 31 May 2024 19:50:33 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sD8Gk-0000000BJP6-2DJi
	for linux-phy@lists.infradead.org;
	Fri, 31 May 2024 19:50:32 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2e95a7545bdso24539071fa.2
        for <linux-phy@lists.infradead.org>; Fri, 31 May 2024 12:50:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717185029; x=1717789829; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZU2ryqJo2RbqRp0VMOW55np9IwacuNJWvzcVOo4CArU=;
        b=elIsJRm921K2nact4K3Orh4RI+n9MQKBYWUV0DL98hNAJZ0PMy/Ws62H1UeAEK9Q40
         XWFMAr5hBje2+XxSAM1a4eUlUeNMM5zTGZ8oDj8RiiClKLFCd54t3KnM8vBfVC3qKzEJ
         pAlZcLsOEi+CfxdipOHLo5zGA9mkqZ6o3MPxjrt6DqpO6o+dBjJKYlBFV4LT4COw8Awy
         JwMX8os1tjIFFygUhSbgEkz1ynXkqUfSqN0PIHdWdaYBkCTcQ4l2I5lXKG2dqtIeYPNd
         zZJrULP/RvDgQ210dDcgRs/4iEVgDk6mBQGzsh+PiS8lyTUt3FL1V3AxlY8x+X2bTG9n
         y/Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717185029; x=1717789829;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZU2ryqJo2RbqRp0VMOW55np9IwacuNJWvzcVOo4CArU=;
        b=XG6WvjPY6NQHx6+untyHS3borvsLbLpCSM/43aX3OObG8rPdVNwxBnxQeZtNmYEH5N
         rSi4kQJn6E95Lcxc+0HQ20LgJ3JsZCn8Faa+Vw4DTFylldLzL+NZzRsVogMeNi2FAiNB
         GBRozHfUZeh1buPBxWsHGvbXhf8ZH4aZ95klkSUpaRHl4UvVCrq+I4x6orvMY6N1N6s/
         9bgZVRwzY/ZLhKAYZlnIAmFRgxfjU0asCrl8mqHb5OGgAxIztXE/qXAIi4uIbRPKh/un
         mxZkqjOGC2t8NgzbxEa1pPvQq7rgfD3EKUOL4/oaJt7jMyokPOx6b/wZLtci/XD/xjYA
         MaMA==
X-Forwarded-Encrypted: i=1; AJvYcCXwLwRlsLHl4rjboesqzyPkbk9b/FJInqkBMElRiS7J/+CxroHK4KLDJp7lSKzkgIfG+I8MrBldeL4mgbonTM/oejS32evbwWWu2x6R1g==
X-Gm-Message-State: AOJu0YzLHNFt/29//h/EsJAQ3eUV4DKn3pObpuE3yCOMn6XC7pHQSWKb
	iFsgg2R94dn/lGDidGqBkkgr6iN7dghodkn9Zusmvq+lNyR1Hz+DALzqobSX7vxFY4X5j6G8Wr/
	v
X-Google-Smtp-Source: AGHT+IFFrDCc8S7OXqYwwrRK/3LCw6k22ohK8j3g2b44ginDvhYF+tDr/CvgM1Z8qwHTb7dniJuQ7g==
X-Received: by 2002:ac2:5101:0:b0:52b:797d:efd4 with SMTP id 2adb3069b0e04-52b8959c55fmr1680065e87.16.1717185028871;
        Fri, 31 May 2024 12:50:28 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b8beaf911sm206658e87.20.2024.05.31.12.50.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 May 2024 12:50:28 -0700 (PDT)
Date: Fri, 31 May 2024 22:50:26 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] phy: qcom: qmp-pcie: Add X1E80100 Gen4 4-lane mode
 support
Message-ID: <ubyvrmv3giartl6pnen5dbis2yz6y7r6zvihorsqzsfof7q7la@e6xc52ss5qyr>
References: <20240531-x1e80100-phy-add-gen4x4-v1-0-5c841dae7850@linaro.org>
 <20240531-x1e80100-phy-add-gen4x4-v1-2-5c841dae7850@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240531-x1e80100-phy-add-gen4x4-v1-2-5c841dae7850@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240531_125030_911669_0E6BBEF9 
X-CRM114-Status: GOOD (  10.15  )
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

On Fri, May 31, 2024 at 07:06:45PM +0300, Abel Vesa wrote:
> The PCIe 6th instance from X1E80100 can be used in both 4-lane mode or
> 2-lane mode. Add the configuration and compatible for the 4-lane mode.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 42 ++++++++++++++++++++++++++++++++
>  1 file changed, 42 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
