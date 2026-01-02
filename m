Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3A46FA374B
	for <linux-phy@archiver.kernel.org>; Fri,  2 Jan 2026 13:29:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zyhQwIQd2dBPdG0bLS6G3Xl+VFMyIAzR958IQ+e/Fl0=; b=DfBN+GLDytvpKM
	ZUI1pGLk54Vr5jE2eT9tHakYluvtdhKXY0zbDYll0aLwD5GB001FfwVh2x8V3FhmYC/CqqcTq3P3e
	EOCBF+oSSxkBvQDL8GUnJ4ZxmioiUKrCRCpv6HxNz1pzrHVv2Mh0iWiUyDComx11of3P2YxXQz0KG
	Q/yDze/+eHfIGn9DLhWv18wZ59bpf75+0yM6QQSESkQFPGBaYP+2KCFVVMwy641mlnDTXLLyrqYsz
	ZJwrBhcOVDSXe17cAonrImDgSzNT74BjbqgyY+KRv7Z8U70wl/yBpibMo5BLjrEIX6XgHGl/4PGNW
	fbYNXRMrrEtb4f2nDAAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbfE4-00000008IEK-0ZOR;
	Fri, 02 Jan 2026 13:29:56 +0000
Received: from mail-qk1-x731.google.com ([2607:f8b0:4864:20::731])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbfE0-00000008IDY-3UZ2
	for linux-phy@lists.infradead.org;
	Fri, 02 Jan 2026 13:29:54 +0000
Received: by mail-qk1-x731.google.com with SMTP id af79cd13be357-8c0f13e4424so1058904885a.1
        for <linux-phy@lists.infradead.org>; Fri, 02 Jan 2026 05:29:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1767360591; x=1767965391; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hnJ6jwDgQJU9BTuZLL/HOYsIa/pNPxkZejWHZ4P59ag=;
        b=hdffDHSdoc9DOSV398Dj+7J0DzHO7VmczUyqFHGiEKt9banX7JeBSzOUXOZkvsrHTG
         tprVjnC38VwoPpV4zqSRL5rSckuaFZltye6rxoEE3+TgCTEc4//bz9NKdnhDd759Vd66
         5+XICeBZTi5vKpYAc9uAMeu8fKYyB3dKi8FEpWcPgoyD20db5wDeQkFtQyJGnW3SNt7j
         Q/ObsPYb9KUZ3/aHa83Ix5oiadtcfMX+v9boOPRvXRVC4ulUAS6roPrO3P8xx+wLxUVT
         v2n4AS/AtOJV7/9lf/CYIYPXCpLIz6LBQcY52y5cTEM9GBFXQ90JZ0aAnu7ypPkqGlqV
         MfuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767360591; x=1767965391;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hnJ6jwDgQJU9BTuZLL/HOYsIa/pNPxkZejWHZ4P59ag=;
        b=xKO6MNIjqrqHYiZuxKlMCrVilhshKeRSJ7yOIFXtOYmhTTn0qJt3f93l+p/zvi0Oi8
         epCUQMMrBjDLHcYwPSVaEYqklUbDoohH0bpwZQ+baitcuAjtDlaORc5M/HB0gmUb9bz+
         J8dJWJcGwpftvRdJAhAMPC81vUmgmwmLg4C7YPlow0LT0wPESW4UHo1Kjpn8r00Paamg
         RAYq09Krl8cIh0ADkwJVsFbfTBRffrxRBir3SNiDXC/CJD3Xw/KpTnZi7dhl91Ag72ww
         nf8QfRcxxmJ1B3VwF7L2Mj/uRZ+KuKYM7YbYVaVuAf1ViUlrlvO2mxx9kJWF2rv3VJDx
         VmdA==
X-Forwarded-Encrypted: i=1; AJvYcCVxo3yIHJSMAMCSRD2shXHFthkm8Mt7hBUfQI2F1/W/VYPAGFOANAk02hBVlhoKhs50TJNJU+cFXiY=@lists.infradead.org
X-Gm-Message-State: AOJu0YzSTsfJPHO8ynNy+Fu0xz65KJx35J8HylfAq/Bq+Vg3A1KX+94P
	YH3/Xt4CQf9RobfuHmEIcdKJn70L7CmnLkiwNo9w/7rF7/HYnQP7jl1M2Gj/5vFLrZ4=
X-Gm-Gg: AY/fxX4kePnB8LJms8Sx1aKBNf8O5HkRGjyD97fB2Aizl4PFLH9oc54Ip5dzutAElTp
	Rjg79J27mD0xV7oNH2FemCeHVtt6Cxf2dj9DkjmAoeqkU3EEeeOqyibETE8cZS6deatEJWFwdQd
	0RAchvRD7O/yckNIy+XhCbV2NhDogU6RnqQFelgV6D7Q4TAzRSejkzdNyHQ72F1/JKbnl19j30w
	9aF9F/YBaZ0Pyd41vL9X3TU7MNYve4ws+wuDvq37ILdnhTOI9jLThsvg5dTyoaQGWCG6djNkK4K
	qWXmqB326l4iiB6PxTSEuj6G4Cak5FSGBk6aPLKFCAb8ar6q3+2wOi2SidmbWQYcgsSTdrKlz1V
	OK1Dlu6HCZVOx+2RvreZZt1/l7gz2+r25di3eumma0XTCDR/iQor00t32KWK4vvUhNw6qCzcGdP
	o0f/fSvHQ6OW+DgRCLXUwv4sL0VS5eP3dAbZZBYG3Ivb6VWcMsHzo=
X-Google-Smtp-Source: AGHT+IG1Ojp/3ZHOCk+pYw0wTrXWi5TRpNf/s4EXvBvr0lH6ldzNvpRwCYYQWryLM3d/lhoyvZPU1Q==
X-Received: by 2002:a05:620a:460c:b0:89f:764b:a4aa with SMTP id af79cd13be357-8c08fc0023fmr6594472585a.18.1767360590946;
        Fri, 02 Jan 2026 05:29:50 -0800 (PST)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c0973ef6bbsm3205417085a.43.2026.01.02.05.29.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Jan 2026 05:29:50 -0800 (PST)
Message-ID: <fa2d6ac9-a919-4ee6-a470-16f4727a631c@riscstar.com>
Date: Fri, 2 Jan 2026 07:29:48 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: Kconfig: spacemit: add COMMON_CLK dependency
To: Vinod Koul <vkoul@kernel.org>, neil.armstrong@linaro.org
Cc: dlan@gentoo.org, pjw@kernel.org, palmer@dabbelt.com,
 aou@eecs.berkeley.edu, alex@ghiti.fr, guodong@riscstar.com,
 linux-phy@lists.infradead.org, spacemit@lists.linux.dev,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel test robot <lkp@intel.com>
References: <20251226173228.2020411-1-elder@riscstar.com>
 <176726567931.201416.8144273654305302884.b4-ty@kernel.org>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <176726567931.201416.8144273654305302884.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260102_052953_095238_27D8BB1D 
X-CRM114-Status: UNSURE (   9.53  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 1/1/26 5:07 AM, Vinod Koul wrote:
> 
> On Fri, 26 Dec 2025 11:32:27 -0600, Alex Elder wrote:
>> The SpacemiT PCIe PHY driver depends on the common clock framework.
>> Not specifying that led to a failure when doing a COMPILE_TEST build
>> for the SPARC architecture.
>>
>>
> 
> Applied, thanks!
> 
> [1/1] phy: Kconfig: spacemit: add COMMON_CLK dependency
>        commit: 8df20813eb01fe29b4507fd470d73675bda3e1dd
> 
> Best regards,

Thank you.  It looks like the same problem affects the s390
build as well.

  
https://lore.kernel.org/oe-kbuild-all/202601022046.OKfcBo0x-lkp@intel.com/

I have confirmed that this fix wasn't applied, and with this
fix applied the s390 build error no longer occurs.

					-Alex

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
