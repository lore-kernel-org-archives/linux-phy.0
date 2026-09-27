Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99340C98332
	for <linux-phy@archiver.kernel.org>; Sun, 27 Sep 2026 15:32:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y3paEVD/qgO4B3y23a5dO3l1MIlRe1hTSN3D3MfpDfs=; b=VVu4n/TcmCstjJ
	M2xqCQ/89dEvMtG2FA6Pvfj1kyzlyA424hFduFyTL7Nq70dUvXHo9+WOPf1JmiiOP1gVn/9g1b0Ah
	J/DRUw+AqleG0gA/IrBoD94dseGYGPI8PgoxNjOg2Y7l5yPe9DJFPJkjr1Pc4QcrXmzxioio55OQv
	lRwr/5rWWCt7RD/BcU+9cMVEYmJeewQIh9Q1qi0FDI8qcgjpoY50o1X7pSxM0sUVqnGW9DcVe4Jzt
	sODeaYOHemBCZHvYBZBEdieLoRyG6kPV3X1OUekalUOk5grurCb0F8JRTvljI4EOc9qUBSvGSY/Th
	Ma7nouA+EATAueFStPBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAqrv-0000000GWc1-1Iza;
	Sun, 27 Sep 2026 15:32:47 +0000
Received: from mail-qk2-x11.google.com ([2607:f8b0:4864:34::11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAqrs-0000000GWbQ-15Go
	for linux-phy@lists.infradead.org;
	Sun, 27 Sep 2026 15:32:45 +0000
Received: by mail-qk2-x11.google.com with SMTP id d75a77b69052e-5309a20a55bso25449911cf.1
        for <linux-phy@lists.infradead.org>; Sun, 27 Sep 2026 08:32:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thinkoid-org.20251104.gappssmtp.com; s=20251104; t=1790523162; x=1791127962; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=AUELxXX/4KdMVFHfZVh7d6Npt4NuE8mNYbP31G6l8cE=;
        b=oleB6Phs+tH15VFdi9VZco6uJbMTbcXVs/TYDGbhE0Xsg/PHIhfnja0Z1zsLni2N1j
         i8YTrrIGbOBaE3wtC4jLL+WMRkUWO7RSg7X8x4WjWK9IbGxxZbWaqNvEPkAUVPcNkcAn
         QWV9FuPkqCbzIw9Y/a9lgEtUkBZ3k3cGPkuHo7Pl4RCDz5+pjFYUUK0aFYOEUlisyN4a
         7SolB8izI0Et7KicmslzBZFAPRAmuyKUlBNQuzHGPh7cQxw/8OKZSl5ySXBrZaPSKYQM
         GnuyCeorLcoi3ShVIklG6VZeJ7Nhofo1q7k7CxnxjFe6VCr7W6yT4zhn2p5ifgB9Ta+u
         6dkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790523162; x=1791127962;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=AUELxXX/4KdMVFHfZVh7d6Npt4NuE8mNYbP31G6l8cE=;
        b=kbgezMn/JyU+0IsuqPeXPvw00NauBPD31jOOHpZ50C3EN2Slu0l8M7r2wA976pJHqe
         kpaea+yxKm+OFF03skqJyOW4A9/0cuYPzY84VVBvtPjz1G5bBJjbWApgwm71Cj6mc4BT
         Z31tAv/gcTFPMzHr+cNbauf5HuTnNgiOSYa1w5VTIwqzEtsODdofln4N4T+04F21gMlQ
         ZyPkHvf1/nMDT4OvQSbcDtkveD3uqdhCTyk9OAx9IH6rcZ7KkhUs4USCLmPeLgq1qCtM
         FStPYeIFrqSkSGRZ4+S5KdJ8b9O67zYPCr1sUgp+NufNxB48xf/oJ5OL+hMtNWyLFuxl
         BNCw==
X-Forwarded-Encrypted: i=1; AKwUvBy/+NTn5KkpmXuzl463jOaHWDipj3iRgsqks6tUEWDCmHQhIE5g2l4TLSIcacJalHSYFEBEdJMB5e8=@lists.infradead.org
X-Gm-Message-State: AFuF++nyOHfjvuJrQBkWkEjvJ24mkPodZlyCLTO0mq1IKCTXgASM+EZE
	nMum3o2k9yW90dTNOePnb5xMV8XdMMmsybd3vkVeaaRmqe8vlSOkxYa3gOuf+z66n2c=
X-Gm-Gg: AYBFou3+rXaDuJoGJGEGy9pXbbG8eCM6bwh4XM4OulKdK3WD/SYD2/eHqDOdsacZ7EG
	YUa9HQlzWjuy5iwnSMlUginpcpqIN1jksvrjSUt5XtwICCcnpdUb/pQYXHo2UHX4RG/E8iijl98
	sS75M03jEsnRqP3TZgYuBb05ASb0O9b7M5ry67bjPldl2SzHTPGQbaJqurcYAiJXBkrm9otxXBo
	hD1tlEGLKujEX3h7u3cRuB+5COJ0oK54zdi74P5rC54UqGUsXhECrrR+7piwC9Qlshn8HqoKn5s
	hVqoDNVxb0E3OlLbi7EQdVOf3EANNwQKurzVceGMmZJrcmbxZN+kmne0zQaWAkUnCoUrIyKtblh
	U4VMe+dDCFfO6JUU+hSGPOqCTKydvZb0GJaUWo0VYAgzPHkbbEcTKCK7G4NDBzo2z9jXUR+O9gR
	WAX/793TUbZOzG7qS8HIlM2aSU97P3Irfsk4Onu0UsoCLrZuE=
X-Received: by 2002:a05:622a:4d9a:b0:533:33c6:e636 with SMTP id d75a77b69052e-53333c6feb6mr56127141cf.6.1790523162378;
        Sun, 27 Sep 2026 08:32:42 -0700 (PDT)
Received: from armok ([2605:a601:a61d:7a00::2])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-53322020e91sm43319281cf.1.2026.09.27.08.32.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Sep 2026 08:32:42 -0700 (PDT)
From: Liviu Nicoara <lnicoara@thinkoid.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Bryan O'Donoghue <bod@kernel.org>,
	Loic Poulain <loic.poulain@oss.qualcomm.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Felipe Balbi <balbi@ti.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	johannes.goede@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
	Oleg Keri <okerixx@gmail.com>
Subject: Re: [PATCH v20 5/6] media: qcom: camss: Add support for PHY API devices
Date: Sun, 27 Sep 2026 11:32:36 -0400
Message-ID: <20260927153236.2727-1-lnicoara@thinkoid.org>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <105d1f73-5334-4ae1-8267-1927f8691a06@oss.qualcomm.com>
References: <105d1f73-5334-4ae1-8267-1927f8691a06@oss.qualcomm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260927_083244_441819_88AB050C 
X-CRM114-Status: UNSURE (   9.24  )
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

On Sun, 27 Sep 2026 10:40:33 +0200, Hans de Goede wrote:
> It would be great if you can post your DT bits for this upstream soon,
> then we can add them to:
>
> https://github.com/linux-msm/laptops-kernel/commits/qcom-laptops/
>
> and more people can test.

They are posted; v3 is the current version, with Bryan's Reviewed-by:

https://lore.kernel.org/all/20260926122533.8200-1-lnicoara@thinkoid.org/

It also links the sensor to the privacy LED. It applies to
qcom-laptops as of 3e45da63f61e, which already carries its
dependencies (the x1e camera DT v7 and v20 5/6 and 6/6).

Thanks,
Liviu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
