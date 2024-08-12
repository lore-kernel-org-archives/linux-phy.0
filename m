Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F401C3DA7F
	for <linux-phy@archiver.kernel.org>; Mon, 12 Aug 2024 13:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=26g3EGJpu0ozPm+wS5uo4Pg+9NmrcBlTvuUY2OITLZM=; b=Lu5g6491JMCFNR
	VOOYiV9Y5C9wHOsWTPslLfIaLghL/ZW8pwU30gVHvMFDH3n2ZSiVHROZJIb1qiEQC9ZFw0zoCoGv8
	XmRuGIFmLQ6X2vTm+WYespsmknlCPtwS5Mdhyv9U3rWkRVlAk7OY5aiwzAvcJ1NUwcQw5qzBWIuK7
	DMlrd7YD5DEPQJQn3qDv087X+ueTKqPdcS1a90Mi3J5cNZ6E1sXF5myyVKDp07arYpg7wTUHPsJeR
	qrLETV0xUxd4EHlKJH72/arIEqI6N7VLRF0ONN96aGPwyzv3gh20Ha0ZW1KKXxt4j8YnU0FHpZmGX
	v5JVyM/G3j/Mc0lbniww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdVZ0-00000000W5Z-3KQJ;
	Mon, 12 Aug 2024 13:58:22 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdVX3-00000000VSQ-10TC
	for linux-phy@lists.infradead.org;
	Mon, 12 Aug 2024 13:56:24 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-367940c57ddso2585541f8f.3
        for <linux-phy@lists.infradead.org>; Mon, 12 Aug 2024 06:56:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1723470978; x=1724075778; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=S8pPBKCtj1qMblogWbM7RgQzND2CLqVTOWooV2IgGeU=;
        b=XH2EnHyGrs3h7jmBsZODcvlehKQGC6gV5H+4sdRCaoGAjrkoyg3I71lvVwVNAwAem7
         t75gE7ZuT7dnMoyWcS/ORGRUjLggBp9KOZn0NXsGmaGJKul1IFVo7k8IQwaxsG1F/mk6
         AT8bs05UUEIyp5KedCHcIoWLDtbduG2mbre8LqSrbJxJsVTspQouMe0rYI7jCcjAHLgP
         OpUgg6/lDi0zyKe3VIwi4xWoFC+zFbDXUEOs9i2ApXB9AauU5SAMqWvoiaApIFP0Iq6p
         Y/zx5bJFyiEIBxpHh3rjNbgtA1zac+FnGMIC+FQwT9HcI7Z9Ev/cV97X3hNC6fzrtay3
         AeYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723470978; x=1724075778;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=S8pPBKCtj1qMblogWbM7RgQzND2CLqVTOWooV2IgGeU=;
        b=XOK9r+bITQP+ZrW8/jOiXNm4PJnXUsdTBLwCWkfFqtW9Zxa4n7kSaXTLc6wTeliAr4
         hoazqWKiA4bjjU0pRQDqX3yKVGVG3SX/WPzFVKMijJxXKhSKatdFk4Rguiu5/GZdMLlB
         7GxelL9L6CbtdmhYFXFdX7QwTq3vVuEM1K6PceL48AXWeYlJLBJJ3W7A/AyHIS3eKbc4
         NHqOO/vYVg+inT8kD083J4r1OUWdXNhRhYqFF18wLgchi+qeMrAUstZcLcrZ55mkgCf1
         9t1iF40GCBXyatFM6r0qF/1HqaWY0h8g0YCJQJh2DaRdPaMG1JmKJEw03inBEs/z7TuT
         FCLw==
X-Forwarded-Encrypted: i=1; AJvYcCVdApeh+tCyCM4limzhlgqQLH22AlRU96y2Dn1YvNJp16G9homtiafAMW41jkI9Ix6NhxxH0JTNeMgLpNkPOy72f811FDMcTuB83Sqy1A==
X-Gm-Message-State: AOJu0YwdxoAwOBfIyMH5KWOS3IHlFeVceZfyr/bebnEZuyQHFt315iDP
	pqrKbloZcqS0vrxzgern3zg9RxxhPiDAVOZCQ8KXy0Q4pYFoPXrQv29RRg5rjR0=
X-Google-Smtp-Source: AGHT+IGUCDDDJmPdkUeF51lGMXmc2B54eXkWDGs+ePmSEkQ87f4+LylylfieyVoH9qavVmYIfup6/A==
X-Received: by 2002:a5d:52c8:0:b0:368:460a:961d with SMTP id ffacd0b85a97d-3716ccd6f24mr267787f8f.3.1723470978233;
        Mon, 12 Aug 2024 06:56:18 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36e4f0a66e8sm7602815f8f.114.2024.08.12.06.56.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Aug 2024 06:56:17 -0700 (PDT)
Message-ID: <0b2279f3-1591-4297-aae3-2b3b915b4a2b@freebox.fr>
Date: Mon, 12 Aug 2024 15:56:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 0/6] HDMI TX support in msm8998
To: Rob Clark <robdclark@gmail.com>, Abhinav Kumar
 <quic_abhinavk@quicinc.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>,
 Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, Arnaud Vrac <avrac@freebox.fr>,
 Pierre-Hugues Husson <phhusson@freebox.fr>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>,
 Conor Dooley <conor.dooley@microchip.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>
References: <20240724-hdmi-tx-v7-0-e44a20553464@freebox.fr>
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <20240724-hdmi-tx-v7-0-e44a20553464@freebox.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_065621_415246_5BBCE6D7 
X-CRM114-Status: GOOD (  17.09  )
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

Hello Rob, Abhinav, Dmitry,

This series might be ready this time?
Are all the patches supposed to go through
https://gitlab.freedesktop.org/drm/msm.git ?

(Probably not... patches 5 & 6 are probably
supposed to go through Bjorn's tree?)

Regards


On 24/07/2024 17:01, Marc Gonzalez wrote:

> DT bits required for HDMI TX support in qcom APQ8098 (MSM8998 cousin)
> 
> ---
> Changes in v7:
> - prefix the labels hdmi: and hdmi_phy: with mdss_ (Konrad)
> - DID NOT MODIFY patch 3, based on conversation between Conor & Dmitry
> - tested 40+40 boots with/without maxcpus=1 => no iommu panic witnessed
> - Collect tags from Konrad & Dmitry (hopefully b4 did the right thing)
> - Link to v6: https://lore.kernel.org/r/20240715-hdmi-tx-v6-0-d27f029627ad@freebox.fr
> 
> Changes in v6:
> - Fold HDMI PHY driver submission into this series
>   => [PATCH v2] drm/msm: add msm8998 hdmi phy/pll support
>   => Link to v2: https://lore.kernel.org/all/20240704-hdmi-phy-v2-1-a7f5af202cb5@freebox.fr/
>      - Rebase onto v6.10
>      - Move drivers/gpu/drm/msm/hdmi/hdmi.xml.h to drivers/gpu/drm/msm/registers/display/hdmi.xml
>      - Add copyright attribution
>      - Remove all dead/debug/temporary code
>   => Link to v1: https://lore.kernel.org/all/63337d63-67ef-4499-8a24-5f6e9285c36b@freebox.fr/
> - split HDMI PHY driver patch in 2 parts (PHY & TX)
> - Use same regulator names as msm8996 (Dmitry)
> - Remove printk statements
> - Add Vinod's Ack on patch 1
> - Expand commit message on patch 4 = HDMI PHY driver
> - Link to v5: https://lore.kernel.org/r/20240627-hdmi-tx-v5-0-355d5c1fbc3c@freebox.fr
> 
> Changes in v5:
> - Fix property & property-names for TX pinctrl in DTSI (Konrad)
> - NOT CHANGED: clock trees for TX & PHY based on Dmitry & Jeffrey's remarks
> - Link to v4: https://lore.kernel.org/r/20240613-hdmi-tx-v4-0-4af17e468699@freebox.fr
> 
> Changes in v4:
> - Collect tags since v3
> - Reword patch 1 subject (Vinod)
> - Link to v3: https://lore.kernel.org/r/20240606-hdmi-tx-v3-0-9d7feb6d3647@freebox.fr
> 
> Changes in v3
> - Address Rob's comments on patch 2:
>   - 'maxItems: 5' for clocks in the 8996 if/then schema
>   - match the order of 8996 for the clock-names in common
> 
> ---
> Arnaud Vrac (2):
>       drm/msm: add msm8998 hdmi phy/pll support
>       arm64: dts: qcom: add HDMI nodes for msm8998
> 
> Marc Gonzalez (4):
>       dt-bindings: phy: add qcom,hdmi-phy-8998
>       dt-bindings: display/msm: hdmi: add qcom,hdmi-tx-8998
>       drm/msm/hdmi: add "qcom,hdmi-tx-8998" compatible
>       arm64: dts: qcom: msm8998: add HDMI GPIOs
> 
>  .../devicetree/bindings/display/msm/hdmi.yaml      |  28 +-
>  .../devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml |   1 +
>  arch/arm64/boot/dts/qcom/msm8998.dtsi              | 128 +++-
>  drivers/gpu/drm/msm/Makefile                       |   1 +
>  drivers/gpu/drm/msm/hdmi/hdmi.c                    |   1 +
>  drivers/gpu/drm/msm/hdmi/hdmi.h                    |   8 +
>  drivers/gpu/drm/msm/hdmi/hdmi_phy.c                |   5 +
>  drivers/gpu/drm/msm/hdmi/hdmi_phy_8998.c           | 779 +++++++++++++++++++++
>  drivers/gpu/drm/msm/registers/display/hdmi.xml     |  89 +++
>  9 files changed, 1037 insertions(+), 3 deletions(-)
> ---
> base-commit: 003a26f5074bfe024603cf76f8fd486a5344f307
> change-id: 20240606-hdmi-tx-00ee8e7ddbac



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
