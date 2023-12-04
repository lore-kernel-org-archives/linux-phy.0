Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3E22C4167B
	for <linux-phy@archiver.kernel.org>; Mon,  4 Dec 2023 13:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VenjTrO5AduqUrycxxDvSZMYSj5Gj2e+Y9uD6iwGqCM=; b=L1MuA9MVIbE4ej
	IR9AzMtG3hZIjDhQt5maHOhP02I3snBWnnUkTpbYsbYi//CA+r+Wsb25R5Q/ABToD8G0Ftu/EnOQB
	5btz7ywu7nETCxGzKrqnXA7qpNUM1N7bQdD+GlxLaWxKu8tjBuJSJgNIjrrXcOqM2ZpQakgA0Zn6u
	GLF63kmvRC0TAM+wArMAukZ24sr0pLOEcaFqT88PKgbmQf+GuxdRexYb5VmpGwc0lEkbBfRxn0Hue
	hVWoXtYAKNTKCxpPjWXQanX2G6CblqEnxv9qKU+BSSnfaRP1DngyhTqJRb7pRzrCGSWP9gOq1vJWF
	GCXQmTwh5qbhNDPe8Ksw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rA9LQ-004h9C-0Q;
	Mon, 04 Dec 2023 13:50:44 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rA9LM-004h7r-3C
	for linux-phy@lists.infradead.org;
	Mon, 04 Dec 2023 13:50:42 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-3333131e08dso2979772f8f.2
        for <linux-phy@lists.infradead.org>; Mon, 04 Dec 2023 05:50:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701697838; x=1702302638; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eAuYi+CP8FnDvl1/9mJlyIJtR24fsmGGBMNOB1G00HM=;
        b=PW48IXLDBTee2mak5DYsuxFGz2bs43LNWN8l9RA09F8Evm6qs4dIoSTIZek9ubzv4h
         QcoXnJJw75NK6nzoFf+z45t2ZRRRA/5thXmCOfiijabEDpxdgks6mNPncB8+1xEgydNk
         zd4SzkbH+5QDr1mC4fKyxR9fShScv2sYgHUs+B5dpDcZ8T1NnpjZlJWbkVIPkixyrFz4
         8eL/QNIw5WVlf8JX7A09fq+H6FZeRr0lYezwegpS9ESuVCGdz72PocW4JbhCAh+a0jwt
         WtbGI4mtHLpJ8A+74EgVqPXMMLAXlxK2J7toJsizoYlBZpL+c5ksZhiFzr3FqsiQyq76
         G+Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701697838; x=1702302638;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eAuYi+CP8FnDvl1/9mJlyIJtR24fsmGGBMNOB1G00HM=;
        b=ukQwhR9rtIG2IW7T91QHTYkXJAJKjIp405sTh9Y6AAKmh4RLqXgArCZjKvn7z4ehls
         Y95fv7OLMjuuBzBZ0wA7PDfVb1VKDluA7pT+vLYEf60FmvgwZ2HFAzUJnZZVgGNQJome
         dxNbRdJ6tVRm4KENGjoSHMLA0AxvFuJAOsSNzNs+lfFATHJHtvvD488d1ylKGON09wC2
         SXln4kXH6GSeuLWL11/m1o7q40RmSC3gss+sXngZVq9DXzKiC05jCGajoM5kkyktMwlW
         g2NZd51xjdcxBoTorDBKLQzVdcZasmvGuQpJ9Z0Pg1iBsSLJN9QUOOOHlu9+PL3HoGgN
         MBuA==
X-Gm-Message-State: AOJu0YyUMGYI0l0ULxsvwPuE1NqkADaUjraXTKu2TRVQZGH95HMeZS4g
	lX/eOrmE+pJTnWIEkEc/mgdvjQ==
X-Google-Smtp-Source: AGHT+IGi4e3DED/9yTz6CQ5jSU6WrggjZ7YH99yV7/7tpCLqmYsyGhKNkD/u/aBxbEgr9z5+byR+qA==
X-Received: by 2002:a05:6000:110f:b0:333:39c1:b7b8 with SMTP id z15-20020a056000110f00b0033339c1b7b8mr1872523wrw.119.1701697838164;
        Mon, 04 Dec 2023 05:50:38 -0800 (PST)
Received: from [127.0.1.1] ([82.77.85.67])
        by smtp.gmail.com with ESMTPSA id w12-20020a5d680c000000b003333e09990dsm5908553wru.8.2023.12.04.05.50.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 05:50:37 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH v2 0/2] phy: qcom: qmp-usb: Add support for X1E80100 USB3
 PHY
Date: Mon, 04 Dec 2023 15:50:26 +0200
Message-Id: <20231122-phy-qualcomm-usb3-uniphy-x1e80100-v2-0-1a3e1d98564e@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIACLZbWUC/5WOSw6DIBRFt9Iw7mv41FQ76j4aB4AoL0GwUIzGu
 PeiO+jwnME9dyPJRDSJPC8biWbGhMEX4NcL0Vb6wQB2hQmnXDDGOUx2hU+WTodxhJyUgOzxkAs
 zNWWUQvMQuq551TDTk7KjZDKgovTaliWfnStyiqbH5Qy/28IW0zfE9fwxs8P+k5wZUBB9pTrOR
 Vep+8uhlzHcQhxIu+/7DzIw7tzoAAAA
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Johan Hovold <johan@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1186; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=bq12H4LhIOP0hqLRSHiVZk4lQQxtWa9RmciRWDla0xI=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlbdkkc7kZeVKqZ0M198ktPur8uAhz993joSY47
 DXYu62EB0KJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZW3ZJAAKCRAbX0TJAJUV
 VhBfEADEHcWM3kW6D8c+Ye+Sr62piQRou48rb7TvAxtP/L9wDjU6rfaiVE9LwMdbIjNnhQl4r5x
 Ff3W/FlqdXLJWIbdhQZRpllk/9eF4i/pZvlnMEjDS8/3OwZAu5D7ehkkpfGifQk+Gu+O2IbxLQU
 ++NK/ailb4Q7f8o2asuHlXxz52W4u25LaikRAF+X6qivYSeST45h39h9HS1opv4jag4wWwX3vUT
 mJv5DpERnIAD0T62EoJauFqnQj9NnmeaNuZOtSrzELJbfUsYlV5JEmOrkN5eS/H/1GsYRJXfGXa
 oa9wNVRJ0n5MzniPh5Gv4hZZQOQmJLTKXHgBIVYiuTt0aW7wnflbWRJJ6HOLNeYxWI8naz6U/PS
 i7pzBfiSdgDhmTurwES5ZREOtzAGiD60z0qMMSnP24I7KDJhiN7xAGuH+fEqrnCH9D4IW5D6Qwp
 nEZ/7zdsqo6QCKE1HsRjL8IBzkI4c5DcMulonTj9AEy5RLKoUSU98QII/Z/0fj5KweISJ2O6/xK
 wqy/DiCdJPdLLMDvh7GIltFEph+iXcqFLE7K8BaY3YMILlWpPW6Tljp4NoiLrAyRM11FtYqp9wM
 YRdtF/cUb9HFiG2o7eTJ6/Ddk65qGYK/MmX5VhZ5FwgHFc1iG6jNTlwwImL16x89qoTrQFBLd14
 3UIbFGLJtAFUaiQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_055041_060806_F017EF00 
X-CRM114-Status: UNSURE (   7.52  )
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

This patchset adds support for USB3 PHYs instances found on X1E80100.
It depends on the v7 register offsets added by the following patchset:

https://lore.kernel.org/all/20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-0-d9340d362664@linaro.org/

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v2:
- Added qmp_usb_offsets_v7, as Dmitry suggested
- Properly sorted the init tables, cfg struct and compatible entry, as
  suggested by Johan
- Add entries to allOf section in the schema, as suggested by Krzysztof
- Link to v1: https://lore.kernel.org/r/20231122-phy-qualcomm-usb3-uniphy-x1e80100-v1-0-3f5bd223d5b4@linaro.org

---
Abel Vesa (2):
      dt-bindings: phy: qcom,sc8280xp-qmp-usb3-uni: Add X1E80100 USB PHY binding
      phy: qcom-qmp-usb: Add Qualcomm X1E80100 USB3 PHY support

 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        |   3 +
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c            | 160 +++++++++++++++++++++
 2 files changed, 163 insertions(+)
---
base-commit: cf0b28e02cfac455b54f1a29fe907931d2b0bb9d
change-id: 20231122-phy-qualcomm-usb3-uniphy-x1e80100-973c882591ef

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
