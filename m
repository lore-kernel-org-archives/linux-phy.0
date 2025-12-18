Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3C88D6E2DC
	for <linux-phy@archiver.kernel.org>; Thu, 18 Dec 2025 19:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ntBO11GnTZWQNblAy+2UGjPdfkuMhgL+UpfIiXfdsRk=; b=GKpc+5ToJ9a3K5
	Dv4XM1g37BiKun+kQnZLKZHQ7fDFnrwHtjwCLuR4gsvL/lTAzaSsAwIPkMzac4wMxV+pAyUg9rPsy
	RE/Su7e7IyftbDY5tcXZfpjeUQp7BGEt3TujelE8jPHb3HL4INSAO/cNq9DRw9BngzgxQ3Gt6y7Cg
	DKJl/Xcobk4EMxwRKF91pq4uJp8n9h8VQ0DTTzKueQAqzHNKFHYlolacX4zC5+f09dunO/igI4SHC
	2k0hWhVCTn7X3t0yhDHFnPVpizN8Mcv3cctnzDZOdqZr7hxt1hewtxJeI25NEloillAUGsbLr9s+P
	6UvfLc5AST1OQEE5EsmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWJoA-000000096QI-0sha;
	Thu, 18 Dec 2025 19:37:06 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWJo7-000000096Py-3MKh
	for linux-phy@lists.infradead.org;
	Thu, 18 Dec 2025 19:37:04 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-42fbad1fa90so888803f8f.0
        for <linux-phy@lists.infradead.org>; Thu, 18 Dec 2025 11:37:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766086622; x=1766691422; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=k+3WA68tbyaWMaCBDkCMe377aB/ts6/EjKX02uXHPEQ=;
        b=co3QkKi4/HgddAkxdy85ZvxZYsvHmJHB4dcx2HT4Zm+ov/zSHhGfsZviL+Ryl2d4P8
         dnMmQRHHUxgeMPVUCkIQhLHWXAn6sLKnHv2DpFxALZzgRt2KxWrKLOM80Guv24FZzXLP
         Kh71fUZ6KRq7fRSLubGQDrIVCvJ5AKOjxbMxM8pi4qRZ43LXxcZYrGcL+YF5FtFRP1zN
         HAeJ05AMyLtNSBm1oejIO81MABLP2hfI/UhR/L5YWK1ATgCfjkwU+IEMyPjzeLgit0gn
         02NmGad+IYIs9ZVpRURGWTb7c1YJQxDP+C7yKPP+toL6icgAcOa+kIwI+UWW7OTp4vOh
         vmOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766086622; x=1766691422;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k+3WA68tbyaWMaCBDkCMe377aB/ts6/EjKX02uXHPEQ=;
        b=WlH6SrDP92EMhWAqkU0R5wi3DoHyRM0+gvo+2On8CBt0WtBJqQTiZDXot0EdPgOWWG
         5z6hpVSUhrLWEyiA+vfPjFTWeF+6gRXfOkbbpEDFbBnlCj8+SEe9CddZTN/uucoW16ls
         L/5CUl1hIqy3WpjeA8Tx8DDSiWTCnXGtAoWl1gQLyTL34POg81FODsFGy92xhsS9sGGt
         MyuqZofi0gaUe1nIaWfPEY57FF4auYc43G4s67WSgm2w452d8LL/ogGLPIqz+mM91YRK
         HRLQk3w0s388WjlBBdpNlfnmvUW3oipmme+VFo3029UlSCi3Kss7LP+TXsVeI9vYxBbF
         lSKA==
X-Forwarded-Encrypted: i=1; AJvYcCVw4/303LEgOV4TIi2woBCZoHQqhqKRMbuFtttQDGXlb7aQBknOHFW5v30yF7134PqN0WBbVul27e0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw1U1EUv38aQPH8uMnrmV9SDeJemuWQzX1Y/nPCD1RtHgaEojZC
	8Gj5FaN0MeZc3hg0IDQSJcXzDfXUYfyNv5a73m/45AhH9aH0WFJpRWi1
X-Gm-Gg: AY/fxX7IGjDaKCKqlIXXKOAvuGzcmlag6Z9XeZoUjqcvH0GZV6/fk6hBq/hRWE2u1h6
	ItkmCvIsDcGQ8suE9PWXXPAD2XzhcXOZE9TkdWuz+owiZKMxRbgXydYaGgNcSfYoF2zmIGW99Cl
	q5dvs52YjMWh8q1UjsLqoJ6kS569FEM/ZBvJj15F9pHQq8KoaEefROP2EdEl4Rm9de//MEds/7p
	hH+qSIs3X+t9zm2VOJxkDdvvIlAToFZKcs/ap0wzR6gy18lp0otALwbV6imJqGjDYHzVLRh6k9P
	S7BUN5Kn+0pBjImUs8J/AvSW8BveRwvVcNikgtRnRHxZ9VCFmzloDeWZcJ/TTUqaL8i/rSsBaif
	Kb0TUlPgx+KTzymvcJ99udPkCqllNYoHFZ8qWabncWfPAIsExPrcmYbpN4Swym1RifDjlYsS8HZ
	GROAMEbfqhJxb4YeI2btTxFknwKkflmyf8ECeVSJgKXZ9MeyIsVu2Tkwm4IjMAMvZaSxFjF4t1j
	v2T09G4Zc2gOKuHNN4E9g==
X-Google-Smtp-Source: AGHT+IHrRzBlIY+FRB9tFL8aSm3apHXMpPAzl6Tnco5Z8RZxNW6uXBEK/NYhBHMWetr8sM0EXHXAfw==
X-Received: by 2002:a05:6000:220b:b0:431:701:4a1a with SMTP id ffacd0b85a97d-4324e4d0f68mr746833f8f.26.1766086621517;
        Thu, 18 Dec 2025 11:37:01 -0800 (PST)
Received: from Lord-Beerus.station (net-5-94-28-5.cust.vodafonedsl.it. [5.94.28.5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324eaa2bdfsm555186f8f.32.2025.12.18.11.37.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 11:37:01 -0800 (PST)
Date: Thu, 18 Dec 2025 20:36:59 +0100
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
To: Fabio Estevam <festevam@gmail.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de,
	j.zink@pengutronix.de, linux-kernel@vger.kernel.org,
	xu.yang_2@nxp.com, jun.li@nxp.com, Frank.Li@nxp.com,
	haibo.chen@nxp.com, linux-phy@lists.infradead.org,
	imx@lists.linux.dev, Stefano Radaelli <stefano.r@variscite.com>,
	Pierluigi Passaro <pierluigi.p@variscite.com>
Subject: Re: [PATCH v1] phy: fsl-imx8mq-usb: Fix PCS_TX_SWING_FULL register
 configuration
Message-ID: <aURX2-jM0FZbLNrc@Lord-Beerus.station>
References: <20251218174920.359282-1-stefano.r@variscite.com>
 <CAOMZO5BGtgDemQeLvJ+hjY+zBtpFLp=pkpD9js0SfknE4fHd4w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMZO5BGtgDemQeLvJ+hjY+zBtpFLp=pkpD9js0SfknE4fHd4w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_113703_868241_552BCEBA 
X-CRM114-Status: UNSURE (   8.17  )
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

Hi Fabio,
> 
> The change looks good to me, but the Subject is a bit misleading.
> 
> It gives the impression that PCS_TX_SWING_FULL is a register.
> 
> What about:
> 
> phy: fsl-imx8mq-usb: Clear the PCS_TX_SWING_FULL field before using it

Thank you for the review! You're absolutely right, the subject was
misleading. I'll send a v2 with the improved subject line you suggested.

Best regards,
Stefano

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
