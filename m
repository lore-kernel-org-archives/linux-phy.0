Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69BDCC54E90
	for <linux-phy@archiver.kernel.org>; Thu, 22 May 2025 12:27:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cJ3jARclhfeI6NTZ8/pGWV63uDryRXOd2kk9cbcH9S8=; b=1wgSWj9/vG3dPq
	fmOfyeqLH4XRX5fHYQ/CVZirxbasVV6Yx9HOn565jlb+2tTRUbH+mDMDhxOMIDzH1hLM/VAURNjGz
	ZtyT8y9uBB4hynMnngbO6C1p0bO0ItxfV9Eg3atgS1WJHLvAyGY3DMANpCbGSx5iyjKXuWIXtFoaA
	EQO94/vqWiHHz52tFRdb+TGDIa5R8IgCe1CTFnIIJC86X9RxR7/c8kbx4oj/kn5qNRSgNIewlXKd5
	vtQnXrV1BFaEnOyaU9an50M9v5G8waDJRdUE1rSdSSfZ70zfumezFgb0K4Wd/bWFI3g3rh7pHsHCI
	2QuSKxmjsUWoUq+VXXhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI51D-00000000zZ4-0fv8;
	Thu, 22 May 2025 12:27:27 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI4zA-00000000zQj-3kJ7
	for linux-phy@lists.infradead.org;
	Thu, 22 May 2025 12:25:22 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-ad1d1f57a01so1428597866b.2
        for <linux-phy@lists.infradead.org>; Thu, 22 May 2025 05:25:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747916719; x=1748521519; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WZuijAJRPJZ+p2n09IvIvH7D3TfvZOkc/364B+Mx6Yg=;
        b=WRgXVfndCbKpLqEmp8nm2ktYB4Itkfe9V1AEhMULgiVeWM4zHxN2lCtj8o4gMzkTIL
         qNcQvhHFiQnwyDy/DqQ99HXrH/V453kD3F4Sz2CW62RDuS6++TUCjzNlD6LktqfSJBFX
         SFXI7MorSuvqBgw1AavYUBtN3k0f30f/2dCc9hDEr2hWAyy4ClivAft8uCd/B4dr5MdR
         iKekh2c4s7NaU5fTIrdhyzEKIrD2xKrkVIvSlu0l1OoApKqoM6ru80mpFC56RKrQ1Qrz
         3d/6gYZfgOrpiFuuAoc9f+FwvArLRdgx5Bh1jhgoXzGBvXV/g0p1G140A3w0Csd0NmZP
         SGnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747916719; x=1748521519;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WZuijAJRPJZ+p2n09IvIvH7D3TfvZOkc/364B+Mx6Yg=;
        b=f3houpFhhqXamVKszFOacMnxIqrfB5xtuwBVf3NngJYA+t6r2AoHySDRkOJZ5CX86i
         HmSWYe/AzKUxxztQMimcpz+ue/EbuDbmc2LGolr67S/sj2amGVOL8tYsHhhkbGFNVE47
         xnEuZfcS13MX24JQXNC+CuApngt5xL8FA+8RQJa5aYK2st/kHb3eTeB2WjV+AnqeTiLY
         HGY4+NMhMMF20lJajBJG8+e9uZ76rSgdeEY3M4WqTBt8kRiUM+oG7XRBlcqPzdvgPXkO
         b/31KH4EsMWTJwxqdOoCfLAsTY15jUjaUEiivCBxOodGxl8lUJR+D1/l5h3kqnsPuqyX
         CwLg==
X-Forwarded-Encrypted: i=1; AJvYcCXdLDX8SwdUWnHH1LfZeI7TCfVVeDLJlZDopbhh3EVAGAGirIEItJlj4ZQc5XTKRy6TaJvB//YulA8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyzm1xNsSzuTqyF8ArDUMduELcbqzttk4FHq+2UfI1ECPKBH9yi
	sSw/zG2TTHKAH9G4iIo/q7VEk/PxGu6vvLZWLpqLwCbqz0Pmh2omHpUbg79E6Cu2MJ0=
X-Gm-Gg: ASbGncuDTdg5yrgO8b5UwUFpqeps6/4DnmtmlRAC2G6c9WXxP5Vt8j2PpbAH2VulvS+
	XAoSwTA6eD12pugJ1slh89CnlT7Z06g6s9UfKTkkYYSpvMkbYl/aXy4nOCTBeT9ZGeOtIpPB7Zx
	/H5ZklowH+XnaqzSWCVqK0ua0XScJoEDfKUv87lCnF/ZxqE2t5ssOh0mTo3KJEfhOSneOtVFLNg
	+g9rwyGi75ngniIi+YClSME5tJmPouIBnPqaPIyB/MrL+/cQyuvkOg+OnqK6RHD6muLbqhV0q7S
	2GY9+Ug49dSlF1E6yd0avkvoFo5jDlBl3TG5PPqgN5Cd4AN9
X-Google-Smtp-Source: AGHT+IHcT2PY89g15o0bxhhQt0NPg7NGUlq73S+uSn8e6SJg6l2RRfQQixZwQtfKRbnT5KPfhf/pwg==
X-Received: by 2002:a17:907:8690:b0:ad5:4fdb:a2d6 with SMTP id a640c23a62f3a-ad54fdbb14fmr1991573666b.43.1747916718712;
        Thu, 22 May 2025 05:25:18 -0700 (PDT)
Received: from linaro.org ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d4ea7b7sm1081211266b.177.2025.05.22.05.25.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 May 2025 05:25:17 -0700 (PDT)
Date: Thu, 22 May 2025 15:25:15 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
	Melody Olvera <melody.olvera@oss.qualcomm.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5 06/10] phy: qcom: Add M31 based eUSB2 PHY driver
Message-ID: <aC8Xq949p6NNDXa7@linaro.org>
References: <20250421-sm8750_usb_master-v5-0-25c79ed01d02@oss.qualcomm.com>
 <20250421-sm8750_usb_master-v5-6-25c79ed01d02@oss.qualcomm.com>
 <aAswZg9s41s/m/se@linaro.org>
 <f7de2bbc-4925-430c-b263-226a633e4bfb@kernel.org>
 <CAO9ioeXzzSBy+wYFATeckKZ2641GaTA1dB_1HOb238DdB7ACoQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAO9ioeXzzSBy+wYFATeckKZ2641GaTA1dB_1HOb238DdB7ACoQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_052520_922271_08AD6FA4 
X-CRM114-Status: GOOD (  12.53  )
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

On 25-05-22 15:18:00, Dmitry Baryshkov wrote:
> On Thu, 22 May 2025 at 14:05, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >
> > On 25/04/2025 08:49, Abel Vesa wrote:
> > > On 25-04-21 15:00:13, Melody Olvera wrote:
> > >> From: Wesley Cheng <quic_wcheng@quicinc.com>
> > >>
> > >> SM8750 utilizes an eUSB2 PHY from M31.  Add the initialization
> > >
> > > Nitpick: Drop the double space from the beginning of each phrase.
> >
> > Sorry, but why? That's a correct grammar.
> 
> 
> Being absolutely nitpicky, this depends on the country. In some cases
> (US) typography settled on using double space after full-stop. In
> other cases it's a normal space.

Okay then. Please ignore my comment.

> 
> 
> -- 
> With best wishes
> Dmitry
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
