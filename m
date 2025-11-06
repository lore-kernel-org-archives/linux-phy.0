Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5304DCCFA1B
	for <linux-phy@archiver.kernel.org>; Thu,  6 Nov 2025 08:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Q7CwgnQpt8lar57xx7uzh0yAar6rZTkWr7L4xbbe20=; b=b3rbOgbz2XAQ14
	4ZaK0Dw7hyNNj8rZPdcd55re+6jkn6V/wLEI57fqJ0SlLRwFIy3mxD82mw5Tsv8qZc8I42AzL0+kl
	1JBFsdWpzHQ38v1UVTcu6n8zQkmnEWiBJO9HIJkrU88Pw4Z3Ri0jMB/lPr9JEVS5ScXspxrItUOcV
	19dUIs0fjsYbur3rz6pVZUKO2zqTMYeAmYBd0vVgU5EbwEwE30HKaZm6bQFnafQg/BgKd1gPU8h/X
	+LA9zDaQyyBiOR8Fqk4W8KYKjLJKoN1GmTjdsdYNB0ovvkUvFR433STFvhBMqvCxLdcmGgMbPWHAw
	mkobp+8ebbxdlbzTE+1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGvhq-0000000F5NP-3rcB;
	Thu, 06 Nov 2025 08:50:58 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGvho-0000000F5MU-1hhA
	for linux-phy@lists.infradead.org;
	Thu, 06 Nov 2025 08:50:57 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-429b9b6ce96so500036f8f.3
        for <linux-phy@lists.infradead.org>; Thu, 06 Nov 2025 00:50:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762419053; x=1763023853; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0O1+Bk0V1ecJIiIZPiuBQsoCpD34teqnebEkC3KejHk=;
        b=McHHpUeki044tYjuf7MXG1PGMvrVRt15mTnXbFFNfgj2zBbfJZeOlN0JjxgWwjLsLF
         fcSbzPS3Ht7f5mloS/HxyuMF+Xb8NBIw/xrhhmuKdd62/MK0NVqLbotkPNwbjArVaHCG
         9sv4dKys7rrwzaH8/BmdDz1d5ieIyL9l9hPOtbVLDNirY29q3jbzL20YN7F3QZcR2Xdh
         bFBaERU9pdLylvKIMvwKCfCW4LciRHC+i7jAIIb0qcGSI9kVqcD7wL3uH+yFX/U0ei5i
         /x+A1RwjN3PILP8uF685gzav+2jq+rfV41QfU8LQZorxX/bZE/l2l0kvEWnoD5Ncu/nC
         CVaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762419053; x=1763023853;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0O1+Bk0V1ecJIiIZPiuBQsoCpD34teqnebEkC3KejHk=;
        b=t7uGhVk631MFhplHfKBjDRzgWf1YENVxX/9wh6FnFagex+Nf0PbkrpIxxehT9e9JY3
         BYrJYdhWxH4Q0TqgmERBh5aWqALfeVedxqmdKlRNVpSvPJpRHzH4FqqhBupE6YbicJmb
         AUaw1vp4Qn+fAfjsDm+IsBIj+7HjguizltRdS56KU8kWhaxpgdiiMX43gowJAaIeU7WX
         d6EL7EKMLieZS9Z5e8G1W0lkOzvJ5TJB/qoKWbaSDZpLtOkTSWvQBm4KEl+yYQJOKnCo
         0Y1KtYhzGzqvaaS+L7+nXxC4MhDD4peGNYKeXyoLMF93q+iX9XD5DWeiU4tbdEBbVPFc
         NbGg==
X-Forwarded-Encrypted: i=1; AJvYcCV5fJu3Pbq56ql7ayKp9HouXDDytWeOgAfS0zFY3Ok5Qs8sW/+lkHKTi3hCZmTt3yo0sGkXCHPiiFs=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy6GtXo376K57TmhZ4dMYGtErp4tMVmGwGBv2phCAvfiv0Kyjc2
	Vwkg9Q5oWBsmO1FWcssU3U1/vwEBN1U8ALKgo0d9BqxV6UDkV9wko7+flAVllOuRw6Y=
X-Gm-Gg: ASbGncs6XdX4KfkxyoqcEsqjL16QvACC1eHtYk4BVPotV2hiiRkfghAdZ7wfp5xSCBi
	rOmtstiKvmSNt70tmJjaQLzJA7/hr7vAcxr8oKTnMXeLzMb6w/SQUPCzGKG9GDttVfNfHx4oDW5
	pvcssSnwabAdUXFH4hV6myz76gc8xySrklpuWjqn2gMlLX5zz3+7jQ5s4fXWZZ0Qmq0toZalE6h
	H7zv6oMh4xrVzkWpJgCxzzC/zFPsZdDUXOZGiqK7ZhOKAUm+zFiWihhLdfvpaIE0dOqPmWB8i/Z
	ELHU5ZglKbttw36Vp7wyQ14tk/hTkwkYH5ps7ksFH93yGg8c+GbK1cx6Dkh/5EvqOVIBt07nmqx
	Q9xAFngEQhmP1wU0AP5jINAlYPqpcJhVljfVnxzRGoM/50f1oBYdS6TrFJFfkVsEO3U6m7ME5
X-Google-Smtp-Source: AGHT+IEpNkwrjClS3MRT6aT/Q6UAaN6LRZvZHXmcxt93frsHr0y/6tOsqdtfdy9Fugmh28HWQ5XyVg==
X-Received: by 2002:a05:6000:2a0c:b0:429:bb40:eecd with SMTP id ffacd0b85a97d-429e33120cfmr4859897f8f.52.1762419053386;
        Thu, 06 Nov 2025 00:50:53 -0800 (PST)
Received: from linaro.org ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429eb49a079sm3648338f8f.32.2025.11.06.00.50.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 00:50:52 -0800 (PST)
Date: Thu, 6 Nov 2025 10:50:49 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Ritesh Kumar <riteshk@qti.qualcomm.com>
Cc: robin.clark@oss.qualcomm.com, lumag@kernel.org, 
	abhinav.kumar@linux.dev, jessica.zhang@oss.qualcomm.com, sean@poorly.run, 
	marijn.suijten@somainline.org, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, quic_mahap@quicinc.com, 
	andersson@kernel.org, konradybcio@kernel.org, mani@kernel.org, 
	James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com, vkoul@kernel.org, kishon@kernel.org, 
	cros-qcom-dts-watchers@chromium.org, Ritesh Kumar <quic_riteshk@quicinc.com>, 
	linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-scsi@vger.kernel.org, quic_vproddut@quicinc.com
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: lemans: Add eDP ref clk for eDP
 PHYs
Message-ID: <x7ej2ne3lwn66xwgavdom45hj5imncczd5h5owufvvx4e3cblu@rdhb2adstev6>
References: <20251104114327.27842-1-riteshk@qti.qualcomm.com>
 <20251104114327.27842-3-riteshk@qti.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251104114327.27842-3-riteshk@qti.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_005056_457949_7C8FCA72 
X-CRM114-Status: UNSURE (   5.87  )
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

On 25-11-04 17:13:27, Ritesh Kumar wrote:
> From: Ritesh Kumar <quic_riteshk@quicinc.com>
> 
> Add eDP reference clock for eDP PHYs on lemans chipset.

I'd add more information in here as to why this is needed,
specially since this is a fix.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
