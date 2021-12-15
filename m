Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27884C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 15 Dec 2021 22:28:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s6S2LBU9wygvMVH2bWhyuK4X7zn2jxCXLTSLa15JmlM=; b=QrTsYYY6FZXVe8
	wCLkR7LKodNzJ7qUACyzoAUiIpUWzW97IotjqPtCPz1Omf2LJLQjcr3r29/Bk2gL08NyBWN6ELUkl
	8niE/LIjKi4RF4cuoRRtaXOjrEz/tpBJEpmBliGSYPTGEbS2xkaxlHeMe4HD9S3y7MMPR7N3Ds55i
	/vDKqwdw79Ith4fUTvDsXBsRz1y4VkFimAmRuFpzK9IWteyxPn9QsiypOurvmVW4sK3NAXsRDNjU3
	QFeeqAUzCcHOVrPxFFF92kcYP+QlPax/KR86NVurCsrjnpxeWvcPkiiBLcE0mgEu2LC5iRIcuqKSn
	uVXeksJk+KPzttMhvYCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxcki-002yG6-H1; Wed, 15 Dec 2021 22:28:00 +0000
Received: from mail-oi1-x233.google.com ([2607:f8b0:4864:20::233])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxckd-002yEE-FB
 for linux-phy@lists.infradead.org; Wed, 15 Dec 2021 22:27:56 +0000
Received: by mail-oi1-x233.google.com with SMTP id q25so33830948oiw.0
 for <linux-phy@lists.infradead.org>; Wed, 15 Dec 2021 14:27:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0k/4WghU8oFurHJHEHSouu6Us6eVLuVOzOhdp+JcH0k=;
 b=NeDhHnDzQKmHQdukLfPb57fcY9sRvEeshRGWjl6VbHYN/VNd2WIdiGucN3VyQHfHyi
 ODX0tPBTzdHUhS/K/UFskuk3zbVPplOGuu1x/3hM6Od2OgzHrir6KktuGRDLF4LOX+Vz
 smHiXw5l4g/gYIGX3S+KGZWonIZx7TDqmoQI+DekZRsEy3SrNmlSXlyCCG5uZAu0Yfzf
 LJrhT5CgejLIjStw/okC2VQgzpIsD4mkhq6Jnn8j/tcQRpqfLEkVXuhlhZMr5QdglWyz
 S7wASV77km5m+lI0oQ4m2DMor4fr4TyP/uoOVeJECDFrpy5pBzEl3XpiE4O2sXMtjjSt
 YvUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0k/4WghU8oFurHJHEHSouu6Us6eVLuVOzOhdp+JcH0k=;
 b=D4D48BjH7+B0WAHh3YI3VTaDp1XoKjcrU3VZVNuRYS5dCxQOrfUAILOTdtfwaDcFYW
 OyB9QNlBUWQyqfL3VObf/+fxtZgQAhADj0g+TV4Tydr1v06H04ZnICkGIs6QEIGpuguU
 wEgjCv38+SAzJn8qIcAR5EJzzksAPtr/S1PZTwbsajmhSJ4+ElCi+dORmJJGF0eI+9iG
 dWZnoFTyN/vS7aLOnE5JNEi9bzEnuNZe6Ne9S4vXeJFo2CxIoqanveUtQEl9hGLvLIsu
 HyLl+t19NORMm1PtFfAvmsnDSjgIR6l8NUkbckWshOYzU+z6dX6xK3gSEJhJ5CkQyOWV
 WIMg==
X-Gm-Message-State: AOAM531olzlXd5xUiRkcL+HRUpwnEnStPwLOKAWg96dmnJkUsGB7Ffe1
 EYnEAuwDvY2xO3NjBkvO7UymjA==
X-Google-Smtp-Source: ABdhPJyiZGSg7nl3iPZNacNkzzIriIsA8K+pbTW1R7BSm60R5ayfzMXsdIZwV+OW92zh2rfswPUntA==
X-Received: by 2002:aca:1202:: with SMTP id 2mr1806801ois.63.1639607274378;
 Wed, 15 Dec 2021 14:27:54 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id t14sm700500oth.81.2021.12.15.14.27.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Dec 2021 14:27:53 -0800 (PST)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: linux-arm-msm@vger.kernel.org,
	Luca Weiss <luca.weiss@fairphone.com>
Cc: Konrad Dybcio <konrad.dybcio@somainline.org>,
 de Goede <hdegoede@redhat.com>, linux-phy@lists.infradead.org,
 linux-fbdev@vger.kernel.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
 Rishabh Bhatnagar <rishabhb@codeaurora.org>, Rob Herring <robh@kernel.org>,
 Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Amit Kucheria <amitk@kernel.org>, phone-devel@vger.kernel.org,
 linux-usb@vger.kernel.org, Zhang Rui <rui.zhang@intel.com>,
 ~postmarketos/upstreaming@lists.sr.ht,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Manivannan Sadhasivam <mani@kernel.org>, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-watchdog@vger.kernel.org,
 Manu Gautam <mgautam@codeaurora.org>
Subject: Re: (subset) [PATCH 00/10] dt-binding patches for sm6350
Date: Wed, 15 Dec 2021 16:27:26 -0600
Message-Id: <163960723734.3062250.16152122166909189415.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211213082614.22651-1-luca.weiss@fairphone.com>
References: <20211213082614.22651-1-luca.weiss@fairphone.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_142755_538688_7EB85020 
X-CRM114-Status: GOOD (  10.19  )
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

On Mon, 13 Dec 2021 09:26:01 +0100, Luca Weiss wrote:
> This series adds compatibles to the dt-bindings documentation where it
> was missed before.
> 
> Finally, the last patch solves some further dtbs_check errors by
> modifying the sm6350.dtsi to match the binding docs more closely.
> 
> Please note, that the first patch from Konrad is a resend that wasn't
> picked up when sent to the lists in August 2021.
> 
> [...]

Applied, thanks!

[10/10] arm64: dts: qcom: sm6350: Fix validation errors
        commit: f56498fc6a9364a35dd74af791bd1251467e9cc1

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
