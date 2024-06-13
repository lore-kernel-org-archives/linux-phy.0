Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E05BC27C6E
	for <linux-phy@archiver.kernel.org>; Thu, 13 Jun 2024 02:02:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NmgjKEnpmjKVs2AcFV+m/99lNSXaEE7y3F4yXZXmkc4=; b=kVkxwFXECldWk6
	No1Fq8SxraYzT31QhMIJD4BrNITikn0RbP6PvzK0QFAG58SfNiuHi/+Q/4mUrjl7JSHb4MA7mGX2h
	swx0Up21vZFrB8wH5499YzvbZ40sfW6rmw58iQAwbXetcxf/mV9G2mE5HOIbdhDowbOCpD3hc8W6t
	ujbdWWC2C2j5FXMqf8IoZnWKxrLlEOzeNDzu2bZ/WIMOSIo8+ixsUGS9UnhiL/LE2zk2aAUjsuCA8
	p4l9lgmcYzSHf5cBBVOndL99gb+3MzpYIs/Jibq+f/r1i+Fi+EkGLu8phSXuo/YCWYZcFSJPmrJ+I
	y+TiZtFRgC+wafabm9sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHZnQ-0000000EnQH-0Nze;
	Thu, 13 Jun 2024 02:02:36 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHZnL-0000000EnP4-2mae
	for linux-phy@lists.infradead.org;
	Thu, 13 Jun 2024 02:02:34 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-421798185f0so5290275e9.1
        for <linux-phy@lists.infradead.org>; Wed, 12 Jun 2024 19:02:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1718244146; x=1718848946; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=f/z8i6Pl4rEpgnkeFbeRNLbhhFTG+NJSS60yF/T/YdQ=;
        b=Uw0J38UAWxiuyOULMCp/omD70AnaoatM5qFvk1bUnAFrVQxef6cCEwhRohNkivNI8n
         u3DQTueE7vOF1UH+UU0qwvl6eQPYJL88au2omL8+TxviOE6E/S7NDvZHO/P9cnrqfuNh
         YDmHSC1A+lrtQ9/NUbuOjgpQP/S3dSmM+VI2jQqXx2PYk663YA4v2xyVgOVCFFx9H6tM
         fFcnshpWewfnp6h5fPqzMRzL5HMxek8cReAMj6BeWkrnNo/iGj9LtBTzC53BvUCg0Hr9
         UqvYZuN2RjhIGt6mTZ3m/+50FKpaieKibc2qOfZG7aqDc+5v4clVckUkkhTO935SnWdS
         FaaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718244146; x=1718848946;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f/z8i6Pl4rEpgnkeFbeRNLbhhFTG+NJSS60yF/T/YdQ=;
        b=D5gT2Fd03GQCyCY1SV8H+7c6sAemzMEacXqNEUz6o3nwJwvRbMwnkASTdGWEoTM6r3
         ieb6ubU23eIJFliN8Nj1aQl83yYuXLbAdsbImB7lHzqKYTjqoSHHJpdka8RLxyMJcG+m
         ZTkz+5POGiI4B48pC5xUULaCR3pNLzo4664bvYoZxDNh18FP8ZFdz6luSxZZGH2TLaaR
         PGsgj52lMUcj8jRlc8AZrRZHTOe+44z8C/GAxMDkyn3NGRSWzL+7sNRTNNGzsbG89RB0
         +++X63t1ZEX+G9YkyzLmditXtQAQO5SaOhnDt6VoZ00LrHZluHjBqU/0XgUcq2pS59uJ
         GBQA==
X-Forwarded-Encrypted: i=1; AJvYcCW3ZMF+IIYzrtekUVYls4CTw/vEv+LcvpnITOe21Y501OHU4CKHNFC8kl7uQfkoWjFZtvnad4ntVsFqfeGRnVocugB7dLJ4gZbQ4BNOJw==
X-Gm-Message-State: AOJu0YxFM2taYTVZYkGaPOlM4vn0SMwR2cGQclHD82bACDW/UG5yTgvh
	CeCaHtUBiHngjkfQchPJybJtJ9aTuoMnUTpon937XbD5kJM3DIe+4QY196ZG41E=
X-Google-Smtp-Source: AGHT+IH6TMZpM7WdFYZbCGBFJhgYHsC6JVCHyLOSB8U2qyBnIKYrH50ZszMxXRh1Ocr1UWGgsHDyFg==
X-Received: by 2002:a05:600c:1f89:b0:421:7476:6ba1 with SMTP id 5b1f17b1804b1-422866c63e4mr26634975e9.38.1718244146199;
        Wed, 12 Jun 2024 19:02:26 -0700 (PDT)
Received: from ?IPV6:2a01:e34:ec24:52e0:4005:4e7a:f4d9:7f14? ([2a01:e34:ec24:52e0:4005:4e7a:f4d9:7f14])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-422f641f522sm5550255e9.48.2024.06.12.19.02.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Jun 2024 19:02:25 -0700 (PDT)
Message-ID: <af3f71e5-6864-475d-aa90-74986d516bae@freebox.fr>
Date: Thu, 13 Jun 2024 04:02:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/4] dt-bindings: display/msm: hdmi: add
 qcom,hdmi-tx-8998
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Rob Clark <robdclark@gmail.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
 Arnaud Vrac <avrac@freebox.fr>, Pierre-Hugues Husson <phhusson@freebox.fr>
References: <20240606-hdmi-tx-v3-0-9d7feb6d3647@freebox.fr>
 <20240606-hdmi-tx-v3-2-9d7feb6d3647@freebox.fr> <Zmnejlkb869mN3eS@matsya>
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <Zmnejlkb869mN3eS@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_190231_844488_3BEC8DB7 
X-CRM114-Status: UNSURE (   7.65  )
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

On 12/06/2024 19:44, Vinod Koul wrote:

> On 06-06-24, 18:07, Marc Gonzalez wrote:
>
>> HDMI TX block embedded in the APQ8098.
> 
> This one too

I assume this refers to:
"Why is the patch titled display/msm, this is phy patch and it should be
tagged as such."

I always copy what others have done before me:

$ git log --oneline Documentation/devicetree/bindings/display/msm/hdmi.yaml
27339d689d2f9 dt-bindings: display/msm: hdmi: add qcom,hdmi-tx-8998
6c04d89a6138a dt-bindings: display/msm: hdmi: mark hdmi-mux-supply as deprecated
e3c5ce88e8f93 dt-bindings: display/msm: hdmi: mark old GPIO properties as deprecated
2f14bc38d88a4 dt-bindings: display/msm: hdmi: split and convert to yaml

Are you saying we should diverge from the previous nomenclature?

Regards.



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
