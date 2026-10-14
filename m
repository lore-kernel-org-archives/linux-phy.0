Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46B42CC6B1D
	for <linux-phy@archiver.kernel.org>; Wed, 14 Oct 2026 09:39:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yrcHzlqh1Qtnqxw4uEdzzORmEcBise/goUUvzsM6sxc=; b=ubGMUDn7NuRrim
	YLTQf9/G9IwlnJyVPd0JmFmPYZKYNAMsKWMSi6CL310TImjWcfVIRrj4Ktn6ArkBnXCDfIqaUg16C
	9dnZjRjGfiWIBzLt3lISoMaO381cM+QIUmmv8EGMzcKCr9WUsheiTtZOcvQIZAz3iKra+JECwrPLr
	6dK90qMPATLdGWxQY2jYFMknVIUUrcFAieSExVeFg8nmOG88x8io8YV9URwtW6h014/J3QbueHQxu
	z4+U2JkAbTWe2eHgce1pTPROGcDonKnda+5Qpp4LMDB8DYCVPsQaHH/ty6Wqry7zVSITsjk4ED88V
	vZkVqGSGy10nZMpYRtaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGvSb-0000000F51m-45Mz;
	Wed, 14 Oct 2026 09:39:45 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGvSZ-0000000F50N-0CU7
	for linux-phy@lists.infradead.org;
	Wed, 14 Oct 2026 09:39:45 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-c247f6687dcso594013266b.2
        for <linux-phy@lists.infradead.org>; Wed, 14 Oct 2026 02:39:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1791970781; x=1792575581; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=i1GZw3cNFikclMDGa5RfJqbcmWgweDgc3stMA6cogOA=;
        b=wj7DzEyrXqBgckGsP4S7poOCs3TogJKBZ9aJ8Ps/+1Xo20xV85JLGf+70V7gYixZW3
         /PSMl6qbOv5jhI5WfYEuLnn8BvDicym6SQXpH3KOqwGuF6iTgbt6rihxbwdID+UhAc44
         iCqcUZJtIwnonaTtHJkMJA+k0jcyAQxoCU0wq+l0gg9BJI2f9Obcs07pzwS+UmQNemdC
         JEEslr77dGOXaDuFXURzY5RzEjjd7gnorW+LyQZaZEgY5THst9Jil61WT9BQkZGGLjof
         zGsnEenH2nfDW7tc5EdXWUu9KXwIApQ/YIlurjRQxKKALmHwbDN4+bKjC+anRm8IuSMe
         VsNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791970781; x=1792575581;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=i1GZw3cNFikclMDGa5RfJqbcmWgweDgc3stMA6cogOA=;
        b=LIggAMHMjK63pyqrxguTAnoODy66sdBG3w4iEsLdAigr6eZfxb1HlWPK6a8bXUoASO
         FUV1OnaWj81tYZJynsn+wp0f0QKhTY9D5Enyelk1A1w5R2kSMBE2j9ZO+VE/osdcYVWH
         CsleOyE0FgAbmXjgQ0F9IPcXOEDK6/992VlSmth2GyUumIClH5fVGFSQUHUKOG22PZIH
         MEIJL2fVse6p4206eOQe/Z6Opp4S2Y/rWUuGjCGofb0okjrcIgWRLue95n4zj/f1y3bM
         1xfmjTU7Dxgc4scjkmmgJaIqEssNSEl5h4hiiJlrtjJS6AWzNWJ5DrloL/5vMYlkyIUW
         kcTw==
X-Forwarded-Encrypted: i=1; AKwUvBwYBPEXJ0vRrwPSyLx8Q/Z1NTZN2QM4duY//QDWOEahdU3sBp+/hWW2BiXIqp/ou4qbIG2DNodl1c4=@lists.infradead.org
X-Gm-Message-State: AFq9FYKVu5bnWR8XAmkcTIanFKQlt/hhSTGMFl9Xk0Jf8sHf3BfETEmB
	cMNKDvdVgVXrqxqE8SmCP6XYRC8m1KiAlfs9uAYNK4vyWymUmGLrgtnFqAxO6JUOPqc=
X-Gm-Gg: AYBFou28MR5xOPKkUjvkf2OAFVtlmpx2n2iQEqvgVVFie+Dj5ZVsy1IXymeHd9/sXit
	8pecZuzQU1rza1PzVyQNj0BVjt/UtwgDupRjQ4Hz33OjBxqyolEQtLoEwTG5QozReVn5SHCrRxB
	srM9mJ5qt02mocKmvA5I0Utcq/XCWGB2/9vXSCILDW2RIdfs2i/HwIrh9wpH4/C6gJENAXR9eAA
	tQdFnGdCxpKlh+px5R55kHMu9fu6mZy3AtCgYh7w/nsJ0yak+rojrhJv6UXAJEIVQsrZzIkXwh0
	oZ54YqktNpANDiJvANmQ/1tKhFzDXLC1/delMhOde06YMKkEfA1cqEB5CCdHgs2OB4aMHnLwfqb
	u0AygkKiVgCyI0vF02+uvT5c6YhpLQ9Y+Oti9mVXiBHg//JBu77pafD8IxhwNyvqTcaYaKcLvH+
	wwpDpcBaKYgAimJwNcRWxFxScx9tnjkcLYqvBKF11UJ5L+brN5QCWG7WbIjyWJ8pDg2J4Mk3kKL
	uMX567ujr+m
X-Received: by 2002:a17:906:c116:b0:c31:8441:35ff with SMTP id a640c23a62f3a-c31aa0e9367mr1389779166b.48.1791970780874;
        Wed, 14 Oct 2026 02:39:40 -0700 (PDT)
Received: from [192.168.0.167] ([109.76.126.202])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c31a9ae59f9sm681485866b.80.2026.10.14.02.39.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Oct 2026 02:39:40 -0700 (PDT)
Message-ID: <d08f3f62-713f-43e5-bec8-dd58997c2249@linaro.org>
Date: Wed, 14 Oct 2026 10:39:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/8] phy: qcom-mipi-csi2: Add Hawi support
To: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Cc: Suresh Vankadara <svankada@qti.qualcomm.com>,
 Vikram Sharma <vikram.sharma@oss.qualcomm.com>, linux-i2c@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org
References: <20261013-hawi-maili-camss-v2-0-fc93222da89c@oss.qualcomm.com>
 <20261013-hawi-maili-camss-v2-5-fc93222da89c@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20261013-hawi-maili-camss-v2-5-fc93222da89c@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_023943_111620_CC6D2539 
X-CRM114-Status: UNSURE (   7.77  )
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

On 13/10/2026 12:02, Nihal Kumar Gupta wrote:
> From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> 
> Add support for the Hawi 2nm CSI-2 D-PHY.
> 
> Reuse the Kaanapali lane table and adjust the data-lane CTRL0 value
> from 0x8e to 0x8c for Hawi-specific tuning. This prevents potential
> stream stalls and SMMU faults.
> 
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
> ---

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
