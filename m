Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07D83C98321
	for <linux-phy@archiver.kernel.org>; Fri, 25 Sep 2026 16:41:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DIxx4SC+CFcXcspWpvm4Itsj4ilMEbe65TFuimdd9+A=; b=oGmUsR1hdwvgsf
	WTvXuGQxSfygzmmF/svq96MSLQPAk/aLFUY8oF/jsWz5QXDMdQE+uitBlq1LhspbXVU+RoD8Q/qeY
	eIom0vHQWZVrKJQK91rwX6+qGAJKByKLrvuCdU+S2oXyf3Ilpr8KshSK1gHof+d8aNWLZbvwAdnOx
	OTbdOon3v5w0EdQjhnn0rEST7Vo86P6oePPi6hxq0JLOIJSb+ZIE4qCT0pMEFS7J0IujeMhKJpXif
	c1SjOvf6T1V5Yo/VZtArzKpm/W1K5IDEVfQY9oprYAFtBbgFXCkv7t12r3wp5jV+Mtn4wEorArEJu
	3nEZMDh2YPZUV6eU8lGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA8zB-0000000DyTC-2Luy;
	Fri, 25 Sep 2026 16:41:21 +0000
Received: from mail-qk2-x10.google.com ([2607:f8b0:4864:34::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA8z9-0000000DySW-10QZ
	for linux-phy@lists.infradead.org;
	Fri, 25 Sep 2026 16:41:20 +0000
Received: by mail-qk2-x10.google.com with SMTP id af79cd13be357-93a222edc62so120027485a.0
        for <linux-phy@lists.infradead.org>; Fri, 25 Sep 2026 09:41:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thinkoid-org.20251104.gappssmtp.com; s=20251104; t=1790354477; x=1790959277; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6Gd4vf7bpYvevr/XoLpiMssWOSifiMZ6CNt4MPZA9zs=;
        b=eV2PvXD1B2kZ0hz6VExdCIsC2NRt4MIO2uqZ9hvtf2wLOoS2avDAuNBvARLvh32nEI
         48/q4akyd+S3josvPkyLZG9L5M85A3V7di4NMV4J1tNz2wEbr7kLyk/scg5Zon9vpqwR
         rG2YPuwBcYfiNF2aY6w2hlcPNKTyyrrNQTeJLthfRS8Abqa3Uzuot1jfZpveXWIWC6hz
         hOuTUPlVZaUE3UyF0UO3mALB4onsl5P8ncUrpvvIA4MrU7D4bBHhhkNqMDH4Fzmbbvw8
         8n8ymY5Xl/5uvbZUM5tVb0hD1vXrjSkss0ebueCbcMB7dOIt55NEfObg/ebVpcV9fIEb
         IWuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790354477; x=1790959277;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=6Gd4vf7bpYvevr/XoLpiMssWOSifiMZ6CNt4MPZA9zs=;
        b=z/fCZOKkhirUj4cC84XbvnDIIkcMjKjwi6oEXcxNKrIIgInYHMBscyAkEQ9QQ9UCRn
         zCnPDsjsbI7TACnoq3wMxxNzYa+BXi50oJ5uZXVWTOemOrs7gWiRy8TuAqS1voMVPQOD
         aZgaWyfZreEd05QTfyhZl7PUIVhdeuut3/QsjyAA7JuJMkk2hmsVU/BujNtHJ6L89dhb
         t+Q5c1Z0I+yu4sGZ75XT3sjZwf73qDFylxqvSgLbjpRoXHK5wtTSlEaJobjuTWgFesj+
         sf3L1YS1Mu6dTrqJXhh0qpLMCB+g66+4DZgM1/DdHiYVOB/y4xwJpGgKZ7eUe4mOMG66
         2+Ow==
X-Forwarded-Encrypted: i=1; AKwUvBzRnIdLlU3nM7Apf+9cNf8Rc+i6jrGnP/rJ+tto67BQakM+XVm50ZIqH2KFBRVzyluDJo3fJZY/7nk=@lists.infradead.org
X-Gm-Message-State: AFuF++novtcKUHvMK801OLrBbgfOTRC0O3q//DEKXPoj6nn/tkM7AaAN
	h7tHWFS53cLTrv01GD6Vhs0+0eLPIFn3yEiI9hjVMZn7T/pG0ikSSav+F5ssot1GRwU=
X-Gm-Gg: AYBFou2O47wUPGmP/rrEPenwE7e/igxTP985lUG+RKxJhrvUuL1tLBn9ZQOBfQcDruT
	bqVgulznYGE5JtOYcy5aDoyu7z2INTDYmlHfPUvoA3kgZylkyUS1YYL7ppql74SDwE/OzXO3AWF
	kbtSeJNfU5gNlc2lAm9wY609cXBTivOFJQweXLHJhjH+Nhrc+wSqpi+5BGehhPYDxmWd5GrTc5m
	0pawjJE1HPLMzYGpGOhIfOS5n1KK7GVlM10WvUbU7yg4Fc4bB2a8rogLWYXIRP+MpxdWGall3r5
	mQ7ObRTst3ZatI0KGOVSLBXk28d9W5wYkSwbpHYTjAnGlk6RtSSaXILU6yD/0J9ChBlcgnVa0lE
	F9s6U7aE6Yhve8RS3M+TPsVMwgd0HAlXIl/DxgyhyBCbC4xPj33tgkF0vxY9rSzLHoo5qvR0Keq
	itks1yGgEYVskeGILfFGJNl+VUEeamrtVPBw2kZfftPJ4vjW1uEoHQDItMhw==
X-Received: by 2002:a05:620a:414a:b0:939:9b1c:ea4c with SMTP id af79cd13be357-93c43bc93b2mr592149085a.28.1790354477368;
        Fri, 25 Sep 2026 09:41:17 -0700 (PDT)
Received: from armok ([2605:a601:a61d:7a00::2])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-93c448ae8ecsm217064385a.9.2026.09.25.09.41.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Sep 2026 09:41:17 -0700 (PDT)
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
	Manivannan Sadhasivam <mani@kernel.org>
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
Date: Fri, 25 Sep 2026 12:40:54 -0400
Message-ID: <20260925164054.25831-1-lnicoara@thinkoid.org>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-5-dc244e124e71@linaro.org>
References: <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-5-dc244e124e71@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260925_094119_459973_64276ECA 
X-CRM114-Status: GOOD (  10.20  )
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

On Fri, 18 Sep 2026 14:56:40 +0100, Bryan O'Donoghue wrote:
> In the first instance the code will try to use the new PHY interface. If no
> PHYs are present in the DT then the legacy method will be attempted.

Tested on a Dell XPS 13 9345 (X1E80100, OV02C10 on CSIPHY4, two
lanes), with this series, the CSI2 PHY driver v18 and patches 1-4 of
the x1e camera DT v7, on 7.2.6, plus a board DT for the 9345 (to be
posted). CAMSS picks up CSIPHY4 through the PHY API, and the sensor
streams at 30 fps through libcamera's software ISP and into a browser.

Tested-by: Liviu Nicoara <lnicoara@thinkoid.org> # Dell XPS 13 9345

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
