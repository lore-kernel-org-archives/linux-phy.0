Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A36AC28B2B
	for <linux-phy@archiver.kernel.org>; Wed, 17 Aug 2022 14:22:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=93gTWSulU4qur9ck4R9NDz06uKh/krPpOnlzvv6Mc70=; b=dR5TlX1ak6SQoh
	wNvj/da6E1Q3JMG/HqzgHAzMmBk7kJXyuhtBnUQPqMqVcjWso+vnbtowYKCEsiemPU/FgAe1rZKx1
	UaKG2xDnzMwqvSjqAq84ezCQ2GAW14lr52iEVIzrqWJD3nqWXEyCIX1G7W7mf0rUSdnRYrTqrNuk7
	KBsW+x5CDVgmCU+CXckZUTBTJAunotLaowLKoannn6e+TmaMJJMWrdaOe0UPlAj7RZRssvSyIoj53
	kl6bx6jfBnqnaDhWMwcpDrueJkpPsNfmvg9uSGRhuc4SedMXCSelAmdQDyNhHJEpwqsWaXfGdPgBw
	k6jNH1p0T8cItz38tYjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOJwe-002nUr-Cb; Wed, 17 Aug 2022 14:22:56 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOJwc-002nRl-21
	for linux-phy@lists.infradead.org; Wed, 17 Aug 2022 14:22:55 +0000
Received: by mail-lj1-x22f.google.com with SMTP id bx38so13690441ljb.10
        for <linux-phy@lists.infradead.org>; Wed, 17 Aug 2022 07:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=hkQw9WN5h+Y42nVQvRSlhfGLJwPyneuk8AABP6NmvEc=;
        b=ThN7HQwQnLxN7z1iEWQ1VfcAD0RfUVXtrUSy4MD09/e4sb6cSS1yebkFfTnx1fy3Xa
         gG2aW8EDf1wM00MQxMVBYxEAIWMcxGBFgczmIjoDlF6a+BUbg2a/wQQfVnNcbnjQGpDq
         jtQ0IcV951fV1AEhlZxcPt7QxJE9FaM+HKeGRyWZe6HFRlEuATR+o5e5I5+hv4c8J6tM
         ahb5KYI/9nig957x5x7Vq9oeNELyiszjMPApHmy4tW1QdGzE08mFaT9llMAU8J5/0i/Y
         QNRZfsjwAIbSAvZ45bXVyOt8Yr2Yd+YdOYIdrJ3KhqA+CqQUo5ao6d5rnvSSXZ9R7D/N
         obfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=hkQw9WN5h+Y42nVQvRSlhfGLJwPyneuk8AABP6NmvEc=;
        b=gbIpqa717IhVmrpLvGxfxr/vYrKhRRhXWulzSDKWQAUJgnJtH4w2hU6pK/z++e9Spp
         EyUpJTcwWuKLv+IM0Qtymyh7MLIi63pnEcepOemvXi3J7yZtb0T8cF3UlLF+M8yV1vz7
         q1m2bLA4JuUsbWjeS8+uuiHhf1RFcUuYx+Fzl2MWMl85fkDly5jfzIkw7k4rINFcsZxC
         fqfWjay4Nx+FCFx2y/UF7HhklJn0pxdOL6mJo6FFaKb6oy16ldVayf6GIg9eGrDfGhZf
         eK54K9x7853pd7bwIw7moDlpF/oJcB95ghDRJwjANBIA93lYqlVQSA8SjLB4A378PVap
         yBIA==
X-Gm-Message-State: ACgBeo2YVth8XPwn6weDQjWowqnSCXLFPpblmqibNlBPfrFfDwc1Rmfy
	XniUNod94MwHJ6Wd8ipA1gGuUg==
X-Google-Smtp-Source: AA6agR4h8+eFKm2t94hbKt8Hz5VfqgUspsmVJMcyCOhfG+++g9trck+HNcSCsL+pgyahCbEkyXPzuw==
X-Received: by 2002:a2e:711d:0:b0:25e:4f25:a517 with SMTP id m29-20020a2e711d000000b0025e4f25a517mr7367436ljc.145.1660746170020;
        Wed, 17 Aug 2022 07:22:50 -0700 (PDT)
Received: from krzk-bin.. (d15l54h48cw7vbh-qr4-4.rev.dnainternet.fi. [2001:14bb:ae:539c:1b1c:14b7:109b:ed76])
        by smtp.gmail.com with ESMTPSA id u1-20020ac258c1000000b0047f7722b73csm1704647lfo.142.2022.08.17.07.22.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Aug 2022 07:22:49 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Yu Chen <chenyu56@huawei.com>,
	Binghui Wang <wangbinghui@hisilicon.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Carvalho Chehab <mchehab+huawei@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-remoteproc@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 0/4] mfd/phy/remoteproc: dt-bindings: syscon: be specific
Date: Wed, 17 Aug 2022 17:22:42 +0300
Message-Id: <20220817142246.828762-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_072254_182376_E64E22C9 
X-CRM114-Status: UNSURE (   7.06  )
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

Hi,

The last MFD/syscon patch depends on the previous ones to avoid
dt_binding_check warnings.

I propose to take entire set via Rob's DT tree.

Best regards,
Krzysztof

Krzysztof Kozlowski (4):
  dt-bindings: phy: hisilicon,hi3660-usb3: simplify example
  dt-bindings: phy: hisilicon,hi3670-usb3: simplify example
  dt-bindings: remoteproc: qcom,pil-info: add missing imem compatible
  dt-bindings: mfd: syscon: require specific compatible also for
    simple-mfd

 .../devicetree/bindings/mfd/syscon.yaml       | 14 +++++++++-
 .../bindings/phy/hisilicon,hi3660-usb3.yaml   | 22 +++++-----------
 .../bindings/phy/hisilicon,hi3670-usb3.yaml   | 26 ++++++-------------
 .../bindings/remoteproc/qcom,pil-info.yaml    |  2 +-
 4 files changed, 28 insertions(+), 36 deletions(-)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
