Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90176D2F02F
	for <linux-phy@archiver.kernel.org>; Tue, 27 Jan 2026 13:45:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H9J3Js76oe8f+km6sLFCt0CZk4Rn+3WQ3JMLDbMbAJc=; b=wN6mvv8tQfqrKB
	zE6yHAkGQRp/IUFW9JY+ZubnQB+ghE20bhyr1c25T2MzWs/hyfrIPrIeryLgwtv0Lq4fFEtx8fQ7z
	fVOepLDSdN+8NHWkw/DZ1NleQNjPmx8AVXgT+k2Mmk74FEO+rYG/qOVdBTtTTf9EmLYYJujK9HMU/
	u3GWZGePhhQcMFmFL/PZ5drV1zeHNIBz8GFnVJhOWD13s8cfoTDmDN5c1zbtuJbhOUmfGU2Jp+IZH
	lYjgtGNzU8WzLlhRkM3dyg7THT3m5LJIN39sQkh91JN5EuWN++jzd5Sk/yC5DVVPodZ2eBQZiBheX
	TVuxSmzvgmMnXYDtTARg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkjNb-0000000EKXa-0GbZ;
	Tue, 27 Jan 2026 13:45:15 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkjNW-0000000EKWl-1RyZ
	for linux-phy@lists.infradead.org;
	Tue, 27 Jan 2026 13:45:11 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RAan9j495955
	for <linux-phy@lists.infradead.org>; Tue, 27 Jan 2026 13:45:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=+KoxU3lQMnCDsUz9/HEPI79F
	t/PTbWYdpT8UE6jWc1A=; b=o6wilfU5s8bXBP2STeBnmiA5I6XiJBQj4RpvUpkV
	f4dbXpJVC7BDE73HApnOeEld+tHX/9A86npskqVnIGxMN7IgF0AtibhiEnWvzIbv
	Zm+xbx9TiS/ioqvKOF9qWjK2UgdAvgI3fH07qNBbWTZMiUMB0NB+cSx3iOsC3Edo
	eRN7hrjisUZ3EfUHvN0SHzx9f8Ld0O3qcCOyUm9+UDO+EkzD+azxzvqqmp/OX3Ue
	KYBpq6y1CS9Basa96vDqoJhrtx3xho+UanRP+1CESf3CIRxdgUtUpGWU0JW4ck1K
	ah3R105tTpnnhcjx8jojyw9xmGbNJXaTI/ujT2fUequbzw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxf3bjx3j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 27 Jan 2026 13:45:09 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a7701b6328so17264655ad.2
        for <linux-phy@lists.infradead.org>; Tue, 27 Jan 2026 05:45:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769521509; x=1770126309; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+KoxU3lQMnCDsUz9/HEPI79Ft/PTbWYdpT8UE6jWc1A=;
        b=ibc0kbdoLkbSlIb4iolPhsIMBV4zKcZ6Z+miEs6sR1dpNs1WOvr+vCOIJj1043c79+
         mYIlhlsnUCQ6uOExA55nMHRb62kpGAm8o2bC0EbM+K1wCqZLNUrImkjMWMyHr9ZcEhIA
         F3p7ysm3wSeNgTtVqvsbMoXPrlPiTk7e3chC9V8Y6TBRqjyGMZ9btQX+NwS8vHDGueau
         aefskZEA9qhEwi2JXh9WNe6dzBALebYkx8+uf/X//RhgRy4C/n3RImBghUKJO7/20R+Z
         LuY83ot/rQUndwMUkFSGZLgz95ITwkuKHMl/FHUKgigcHTxzFdcRlgShNRIn294xNmNs
         DGRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769521509; x=1770126309;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+KoxU3lQMnCDsUz9/HEPI79Ft/PTbWYdpT8UE6jWc1A=;
        b=EF6PjExj+FPE4zVPVTJRuSGFhbEhRwvfpBl/6SC7l5WUtn//WZFdb9q+L3b4CC4BUd
         ADY4/OA+m82XSPw/+l9DGIdljC0wXbD+widyhtx0qPS85KXkQ1kdd2keAkS674kZykT+
         wCph/yOvpuxLXHXD91F7R1Yw16ZHecG28vB83vuS+OfbzmOdId79tMPvloilXmQLeIq6
         H9cokBfZ2WF4QGNmCuRzw9gtsecjdYmFJTzBh1uChQMKtIu7l9Amcp81BZGLddgz/Gj2
         zHPc3QDCpIJJkEzYNjgAg0z4mZwUOuvyOPDF+9I6A/ThB21nBYzmZtvx8uuFxr6i0jKX
         odtg==
X-Forwarded-Encrypted: i=1; AJvYcCW8L5aMJvXKH0hOSs8x0Q8uQ2+pr91rHWQcy3WwF8YU3DDOzZDppIQJeS51/r5yzcF85KxegsqllZY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx9vYkLGHz8tl4fzcdSsNLMEC0VWTX6tg44ACMBGeRbMJfq6Ncr
	nXG0teF2W9C82XvKF8e9+ku2bAV98EB07q+inEHrTGfMo6h/eFJj84RLZGJqFsddgrhSBLBhn1N
	ubd4O9bgoeVIz3PDvUKYoNuuF0eaKKgv2cAfcWqwXgnb/1DVqjthb0aMWuX34E9JSaHgI
X-Gm-Gg: AZuq6aLFDL8247m2FYQlZsS19X87FM3JG+M554MyIF9EF4N8RKb9nMS2Oj7r/k5riqA
	UBcHfBoOZgNFPmHVDyqWkihTqfB7xf8JOhhLgjiwy6rur+b8AMFiyzQm0trpPS+k1nhEVd1q1ER
	SkUlfHD5vgOJppBbate65a0fg8XfAvrJ+vMnlErI9yTn01k0oMCyuU8S0U4hQ+1+/kxW6/Wb+mE
	Gd8byZbq/rbgl9a4y5P+IOfHwwOMTsRSogXJ37gRT7Jmnvz2ahC4GpGehc1G+4Y8GK7lG0STmi5
	5iwZhdgbYuszQz/ash1FUywXj6hZP5Ng9uuLbFwimQ74Vr2nJBC3BcK5BvBfpZeGdL5v00vfLtq
	Fn17lu0yZ271dr0qbdwLde+k=
X-Received: by 2002:a17:903:2acd:b0:2a1:10f7:9718 with SMTP id d9443c01a7336-2a870e18919mr20174185ad.30.1769521508924;
        Tue, 27 Jan 2026 05:45:08 -0800 (PST)
X-Received: by 2002:a17:903:2acd:b0:2a1:10f7:9718 with SMTP id d9443c01a7336-2a870e18919mr20173925ad.30.1769521508384;
        Tue, 27 Jan 2026 05:45:08 -0800 (PST)
Received: from oss.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a802f97a81sm116816095ad.47.2026.01.27.05.45.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 05:45:07 -0800 (PST)
Date: Tue, 27 Jan 2026 19:15:01 +0530
From: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Neil Armstrong <neil.armstrong@linaro.org>, netdev@vger.kernel.org,
        Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH net-next v2 00/14] net: stmmac: SerDes, PCS, BASE-X, and
 inband goodies
Message-ID: <aXjBXYLlFChzI7mb@oss.qualcomm.com>
References: <aXNEwBW3OA1xLEUj@shell.armlinux.org.uk>
 <aXN5BFXMshnhwBQ7@oss.qualcomm.com>
 <aXOvV-XRmn_Pe-ca@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aXOvV-XRmn_Pe-ca@shell.armlinux.org.uk>
X-Proofpoint-ORIG-GUID: RmD0HwxaPHZHcVj1t-khY8GZExcv7K3T
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDExMiBTYWx0ZWRfX45LDCiQSZzkd
 UwpC/p+T0gILk8QBRxBszeBQY7HDWlSmcr/Oaxgge0ibO77+FbPwGXHMljZm0u2o0ZOfkHIYATY
 o+b089ppORJicVaD3gDzE6ESiGx9SwTul6ZKNIvUk+NtJXiGg2a2WzQOk2rZaXqCbpniqs99kS1
 UfJS04KvpSjHOuktTQWpLlTDqpm/zWKHUR5oeoMQI6CoN6Js9Ui6MgnKPKZMhiBM5xd7ko1Et/c
 GVFOKUy/Yxzdo002tbDrc4IGrM9U6LFLJc00GLWOYp6dyQSJbEVvdJSPWLcHzJqoxmU9m3n0xA5
 4lKobdfF1EtyXMraTFAyLFfdRaM5NptVANz0kHYMc8av9im7tM1s2QfJF78rVLJmbr56kCaFsJa
 m+r3NHQJIyhSy7Dx0qOru/ms7hEZL+MjDFL1W4uMwd+9l2oPM9VLgKoTBHr4LrFejawW/x15m3Z
 xd5Tx2lrKDU+Yf1ThWQ==
X-Proofpoint-GUID: RmD0HwxaPHZHcVj1t-khY8GZExcv7K3T
X-Authority-Analysis: v=2.4 cv=AOFXvqQI c=1 sm=1 tr=0 ts=6978c165 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=tlC0plkVVdZB6woX1b4A:9 a=CjuIK1q_8ugA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_03,2026-01-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 phishscore=0 adultscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 spamscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270112
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_054510_464795_4B7604D8 
X-CRM114-Status: GOOD (  18.50  )
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

On Fri, Jan 23, 2026 at 05:26:47PM +0000, Russell King (Oracle) wrote:
> Sorry to hear that, but if it's any consolation, you're not alone. On
> new year's eve, I had three teeth extracted, including one that was
> laying horizontally in the palate of the mouth buried in bone, and
> needed in bone graft (modern bone grafts are quite different from what
> you'd expect btw.) It's been quite sore/painful as it heals.
> 

That sounds like a nightmare. I hope you get better soon.

> Given the results you've given, my suggestion would be that the
> following patches are probably the most risky:
> 
> Patch 2 "net: stmmac: qcom-ethqos: convert to set_clk_tx_rate() method"
> 
> This changes the way the clock is configured. It would be worth
> testing that and giving a tested-by for the first two patches if
> that's successful.

Right, this new sequence would move the clock rate setting to after the
custom core is configured. Unfortunately, I don't have a device with an
RGMII interface. I am checking if I can get my hands on one.

I have given a t-b for the first patch.

	Ayaan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
