Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B10AECA5FE3
	for <linux-phy@archiver.kernel.org>; Sat,  3 Oct 2026 09:09:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v6qKwT7OwsP3kljDRAnD44BCKivA1vhJInfkeDbqLjA=; b=WdGP8a5ARv1TPr
	V8GpG6Wv0ipABBfPpOpFkh2jsPRp64OOmnVzFJMtGnYoU40TFgGgqqof2eGRFzrpfMLGz49PcHXJI
	A5jU7TRB8en4voB3FzQLwNeW2WBot24tbtXui+gpFd03Jn5rdmnOkKtKcfct7us/fhzWy/2Fgjt34
	wPsZYvCV1zjCx6lVbKiAZ1t5xmgnEBzS8kayKS42RcGZCQG5YoaUSCwkVwb2vdN+CrdLWhetSKzwa
	B3hCSgOcOsF/n1/c2hvs6TO8w/XMffVDG0tFv3dFrH+VGabANJ9Hk9GI8WVoUVbdDmzn2Iku3HL90
	Q5F+MS0pc+wQ5Iz6e+OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCvk3-0000000DEuy-1qoP;
	Sat, 03 Oct 2026 09:09:15 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCvk1-0000000DEua-19yk
	for linux-phy@lists.infradead.org;
	Sat, 03 Oct 2026 09:09:14 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-c2e62319cfaso35720666b.2
        for <linux-phy@lists.infradead.org>; Sat, 03 Oct 2026 02:09:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1791018551; x=1791623351; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=aD42U9G+t3AA3eGszJykKagIq3I33nrg5HXNEK2wHFE=;
        b=ppqsV2VeWZ79fOS231AAToJZD7BnS9LA2hnDWBO4aX09gAJgMUCILGWoIIPMpp2X9U
         CuQ43Cj28eUK0YHmPXn9OJwXQ7XKUdXrfbTrkV4keQK8SLitu7HiSpvfYezdxy2uO26b
         IagwbICsUv1Zq7zwfe6bepy04qjw25n/nmQHBIZR3/OadCGha/OtPCtcR/YzjfG5NYyM
         QbBjQydFH5AGx9A5qJN4qwxMFWdzrYmzdHdYfVCTDj2GGjuJfJLEFbmJ3SHxRhfJo09D
         WtBP7j3DR8vAN2pYW2MzhPsepLeMQyfdKlaiGWyfsCUMCURdvvFEu8niRMSxJ49oIpgi
         NNLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791018551; x=1791623351;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=aD42U9G+t3AA3eGszJykKagIq3I33nrg5HXNEK2wHFE=;
        b=SHBNdkaRwnzkc2cAE76vjkqmbIuljXLHARoa8oKbge/gbmmjxgwAJVmwE8reVsjeLT
         5ET4lIhLpnEpsKrInaWnHxEAoUpYQPtu6+196417PSRxh6PJW3seJEqKl9gGkREyRgsr
         xtdxs4hJnVuLK9/5thAy/D2J5aGeRSa+br/4/aldRkk1OJFgJnbDLnM8yHXBL04iVpPm
         PyCJ/tbiYWPOL2heiszr9Mxty/rwKCRmt3HcarHc5mNRyKVRMoeQc2ZmZ9Ch0TeBpCYP
         DrkTpmb5HLORox3bj7LV7tWEPfZ0aK9Ov4dowu8bXd/+GCjXYjUAc7pXZ2qmJI3H4yND
         OE2w==
X-Gm-Message-State: AFuF++m6zpMm4EPCHDSikz6jRsEmcBq9OdPFa+CPHD6GGTrFfwmzw+sj
	AA9kIs8WXrT8QHse9LImXFkuA7UJPAVhtLhOF7H8eeszETKDC4kSO38xjGOjKIBDSVc=
X-Gm-Gg: AYBFou0haIx6KhHgnBC4BXRFll5ShEbH+ApPuv6hBxJNtJB8HL7yUqA0+biqOMgWCaZ
	sS6MrPmhUWeBwNRVxmb6oXbkSPKYBTIf0xNwqvjAv2iGr7b7RlDoxLYnCCKPB5K0FQ0vAZ0Zyu2
	OOmZK4AHY2kZjKQiaSKDSNdPvOgXCsmZDsgYJGPbmUxfo+vsv9hEYGeIuvR6SfjP+A5fQUcx1pt
	+O02e2cBMS0q2rflCAvxipjZbh5xGotz3TSLjFq0ept9A3eak/InPkunbOt3n5JyvSC5i/MeH0f
	jBbhZDFAwvzMtuQZxHjc3Aam82UDwW26Dnuhskks4mOelfJ2iOWtNmRaF9CMderELEeGd6YhhJA
	09vam3cEDtH2eD76EZYSdHEEW8iFcgXg/ewLrN2uJ8rh+oUZDqzAyMrpdYawDeypXnNToYXugiy
	l1cJyMUy+pJujF507RnmdiPTNC8ekeCVr2A5omqvIvP8wGyOZfOxf8i4Wubk9BOcL7WLqm+SQL6
	Vpd5Q0nJxpI
X-Received: by 2002:a17:907:e155:b0:c2e:4d39:b5a1 with SMTP id a640c23a62f3a-c2e6ece5605mr88982166b.17.1791018551275;
        Sat, 03 Oct 2026 02:09:11 -0700 (PDT)
Received: from [192.168.0.167] ([109.77.86.130])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2e4cd05446sm174814366b.19.2026.10.03.02.09.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Oct 2026 02:09:10 -0700 (PDT)
Message-ID: <fbc988c9-d701-4479-96d0-f18d92063f31@linaro.org>
Date: Sat, 3 Oct 2026 10:09:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v18 05/11] media: qcom: camss: csiphy: Add support for
 v2.4.0 two-phase CSIPHY
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
 Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, jeyaprakash.soundrapandian@oss.qualcomm.com,
 Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
References: <20261003-kaanapali-camss-v18-0-87ba4ebe0db1@oss.qualcomm.com>
 <20261003-kaanapali-camss-v18-5-87ba4ebe0db1@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20261003-kaanapali-camss-v18-5-87ba4ebe0db1@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261003_020913_365948_F84A7E4B 
X-CRM114-Status: UNSURE (   5.58  )
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

On 03/10/2026 10:02, Hangxiang Ma wrote:
> +			.hw_ops = &csiphy_ops_3ph_1_0,

There's no reason to continue to use the internal CSIPHY hack.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
