Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA3AECAC592
	for <linux-phy@archiver.kernel.org>; Fri, 19 Sep 2025 11:54:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HW/uoS9FeQzRhZcciyRi9sS+X5hrwHsfJLOuCjZW8Mc=; b=o62pwmyhRukNvw
	0hi5tRLG3E7xQMe5YPZDJTTRHyXrkCXk2ZBa4qZFh2t/BBlPHSqmjE/xgTGFDwwRRAkFLd+X7irFu
	sUTcO+Cl3vZe2OfYSa872MefF1Imx6Kk2M3L/Yy+rGT4wIf7c8d5K/ec4EhHZf2Zjoeg7iFBZrGyY
	U87l3XRpQfZenlcRdtl5GWuvLH7Rr7YDaOlCHcMCPiReQEYSDHTsUVztHvxaKWxxU1Ugitk8aX9q9
	OKk8otcDrkB1dNhTHqsR3bMu+U+QmU9nTH8hIS8kbQuoCErlY5W4t7gb06y58ny5QSrQ/NVSUwhty
	S975rrdJQn//GSRImgRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzZhJ-00000002kAP-1ZXB;
	Fri, 19 Sep 2025 11:54:41 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzZhG-00000002kA1-3KR7
	for linux-phy@lists.infradead.org;
	Fri, 19 Sep 2025 11:54:40 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-45f2acb5f42so15649875e9.1
        for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 04:54:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758282876; x=1758887676; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Zw5JhaXdnoe3jqyhiF/Ntgpl9bjPmMJVwWBx3p8kIAs=;
        b=bFTlFejWdqWgGInBXt7RFnkfFjvWSvBzM/T1YV5kC7ovGYB7WZxjZ4nPHKnPqV8q8V
         iqNa6N/NDeWSkaY59Vi1WdhAfwZR+VX8FiDboe7V5eQLsyw8hm9+WUELLR2aHfvm/b1C
         LObUrrlHvD/IgDzIoaZnbdWljv2ZKb/DW4ekZUdADwYOYtoGmvcfzi8FHwLwzLPdEyvZ
         a5YK6HfubZJZ/+LO6B6ZIpQ+hIkPFSJ9Wpd3FQYmzknRTdQf/5ZohbrcQ7qGdPaHMBl6
         8Zf8NzvwFBvEVHnK3F+VwXZ7Hczw3clFKAFfTqmRhq/XQnTTEd2ud80bASV+WF7ayeaV
         ufwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758282876; x=1758887676;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zw5JhaXdnoe3jqyhiF/Ntgpl9bjPmMJVwWBx3p8kIAs=;
        b=GnjnzCoPTOC+NiQpdJWe2peACY5yTFQG8T/zZRGTl4DIqYWVuGYgkPq42T6MFu6mTO
         bHPWyRVyoskRcrX6w6r4dg5alxZe7jjDv/MU4otyOyxkdXKVcJ/OJInLNHgVF8g6Mg6y
         RLHEoOKPTWOqo9XUFQ0DYCDV7E69V00MLMIbb9w2nKYNLdfX6B3Wtl/sonMsPxiaU6nW
         nlFevuBMz/+t8wuinAJYy37s5Sf3gYWoZP9og4Idpi4RwgBVkQMh3tAQlFOCG/z0zzfk
         Yr6uj+Y/e5UOmKxmiubLIM1uuFqnjB53xcGPtFJnb8n4brugWwx82DxfayhlN29ZztGW
         K1Og==
X-Forwarded-Encrypted: i=1; AJvYcCUte757/fklfKBJXG+qr7inlZXkiKMs0kg71P1dI5Os7Y8ILd18bbKXyQFUnIKkG5q7pbJ3HZH+BfQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YyBFd3vLgyvPFhMA+mkS/naQGO9qx89bwYR23G/KInIwdUIpvjT
	Gf4TlGuxl9gIcDHvIXeGpxivzu73AnvrRQEz44XAud6aIKKmbXb7BZeJ5L4/JAWGQc4=
X-Gm-Gg: ASbGnctMUg8plbxkV6tLXbuz+yQUxSzz/X8n2srjspivJoZss6CHg7P6J49zF+MxZ6A
	gxJLkHfehAdlNQY2PQAS5EmLC05dMdzVp2aaTlRTinZm4vaEbTubE2k4ueKaPV+55CZE2GiQZPw
	rtVm9zBXPbJprWOOLIcJwYE9Y/RR2Wuv5TTmHGVrpLdhB3mLKXexLUVr8ibb6AehTbOByLs5NNH
	l5gYtdd1muEPgYhzE0KAfXu/y6oHMSmehTnk/7cBHnZqjo6Fq9jZyYVMB0NKjuvt6iYWJ8jCUgs
	9D1jnxCaCzGO1IKmouuAlBnKMSWQQ3Qqqq9uny1Kk7ujXcEjz9c6/fqSY5ztQ1jG5+6aDHSnvDL
	N4GoWQ9xj/VDYIfDACe2PMQ==
X-Google-Smtp-Source: AGHT+IFty0LGXanrKQc8uiaU34t2aKCwoDXillmmR4k+u5DKXRZr2oxF+R0FQjEB+ClxtwJ90j4SFQ==
X-Received: by 2002:a05:600c:3e08:b0:45d:f680:3140 with SMTP id 5b1f17b1804b1-464f7027e14mr67841705e9.2.1758282876587;
        Fri, 19 Sep 2025 04:54:36 -0700 (PDT)
Received: from linaro.org ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45f32085823sm81620805e9.0.2025.09.19.04.54.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 04:54:35 -0700 (PDT)
Date: Fri, 19 Sep 2025 14:54:34 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Xilin Wu <sophon@radxa.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Sibi Sankar <quic_sibis@quicinc.com>, 
	Rajendra Nayak <quic_rjendra@quicinc.com>, Johan Hovold <johan@kernel.org>, 
	Taniya Das <quic_tdas@quicinc.com>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH v3 0/3] phy: qcom: edp: Add missing ref clock to x1e80100
Message-ID: <qohctzmztibeoy4jv6unsvevdawfh2h3drrneo5wmbfkirokog@pfaz3vht5kjz>
References: <20250909-phy-qcom-edp-add-missing-refclk-v3-0-4ec55a0512ab@linaro.org>
 <6A43111ED3D39760+a88e4a65-5da8-4d3b-b27e-fa19037462c8@radxa.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6A43111ED3D39760+a88e4a65-5da8-4d3b-b27e-fa19037462c8@radxa.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_045438_861342_5AD9AF16 
X-CRM114-Status: GOOD (  33.46  )
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

On 25-09-19 19:06:36, Xilin Wu wrote:
> On 9/9/2025 3:33 PM, Abel Vesa wrote:
> > According to documentation, the DP PHY on x1e80100 has another clock
> > called ref.
> > 
> > The current X Elite devices supported upstream work fine without this
> > clock, because the boot firmware leaves this clock enabled. But we should
> > not rely on that. Also, when it comes to power management, this clock
> > needs to be also disabled on suspend. So even though this change breaks
> > the ABI, it is needed in order to make we disable this clock on runtime
> > PM, when that is going to be enabled in the driver.
> > 
> > So rework the driver to allow different number of clocks, fix the
> > dt-bindings schema and add the clock to the DT node as well.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> > Changes in v3:
> > - Use dev_err_probe() on clocks parsing failure.
> > - Explain why the ABI break is necessary.
> > - Drop the extra 'clk' suffix from the clock name. So ref instead of
> >    refclk.
> > - Link to v2: https://lore.kernel.org/r/20250903-phy-qcom-edp-add-missing-refclk-v2-0-d88c1b0cdc1b@linaro.org
> > 
> > Changes in v2:
> > - Fix schema by adding the minItems, as suggested by Krzysztof.
> > - Use devm_clk_bulk_get_all, as suggested by Konrad.
> > - Rephrase the commit messages to reflect the flexible number of clocks.
> > - Link to v1: https://lore.kernel.org/r/20250730-phy-qcom-edp-add-missing-refclk-v1-0-6f78afeadbcf@linaro.org
> > 
> > ---
> > Abel Vesa (3):
> >        dt-bindings: phy: qcom-edp: Add missing clock for X Elite
> >        phy: qcom: edp: Make the number of clocks flexible
> >        arm64: dts: qcom: Add missing TCSR ref clock to the DP PHYs
> > 
> >   .../devicetree/bindings/phy/qcom,edp-phy.yaml      | 28 +++++++++++++++++++++-
> >   arch/arm64/boot/dts/qcom/x1e80100.dtsi             | 12 ++++++----
> >   drivers/phy/qualcomm/phy-qcom-edp.c                | 16 ++++++-------
> >   3 files changed, 43 insertions(+), 13 deletions(-)
> > ---
> > base-commit: 65dd046ef55861190ecde44c6d9fcde54b9fb77d
> > change-id: 20250730-phy-qcom-edp-add-missing-refclk-5ab82828f8e7
> > 
> > Best regards,
> 
> Hi,
> 
> I'm observing what looks like a related clock failure on sc8280xp when
> booting without a monitor connected to a DP-to-HDMI bridge on mdss0_dp2.

Am I to understand that this is triggered by this patchset ?

I don't see how though.

> 
> Do you think sc8280xp might require a similar fix, or could this be a
> different issue?

There is no TCSR clock controller on sc8280xp, so it must be something
else. My feeling is that this is probably triggered by the link clock
source not being parented to the clock generated by the PHY, or PHY PLL
isn't locked yet at that point, but I'm not sure.

I'm not able to reproduce this issue on my x13s.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
