Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64950CD585E
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jan 2026 12:06:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T0u+gBRmHKR2Zp+RlSisbj6/YMfKTau10RFzcrEaxWU=; b=L/mVtptmywX6xZ
	paOzsWvV3SUnH5tyYykXDIiHtaeJoHrJpdMi50bBlzfN2hsiZVBukL0XjhJKzTMEwWeaaHOfoYbn7
	VGMjs0vlSinwr87wjDfhUfzBjVMdhzLx5HK/Rk4GS9dl7hURptml9vJfITIwIsxxXtHp2y8UiWbvY
	8onvyUASRk0BtjEgSWP01D+Gb87JwARuTxW425m4+F3xGGkh596Vom8akS+lUtH191bbzVgJreYj1
	dhJ0iQwqV9oXFrmxXO9L6d2J/uPcbNZPJCiLzstyjxilf4+JayEr5Bykadtlk2VTWcwkUm50KMwXS
	Imz6FiGXJAwH50CrkvDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdSIe-0000000Es6M-0WrI;
	Wed, 07 Jan 2026 12:06:04 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdSIb-0000000Es59-1aGb
	for linux-phy@lists.infradead.org;
	Wed, 07 Jan 2026 12:06:02 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6079bv9O2876916
	for <linux-phy@lists.infradead.org>; Wed, 7 Jan 2026 12:06:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jXpo5Dg7VBQka9vAkpK/fsgMzGFmUOfdUx5/PD+SJJw=; b=at9slPrB6UQC8Iyg
	yEkBgioEnmvWdbfCKfZ4YTh1l5f3OfCW7/9Q8PI/d/T6ETktHhYmHEXGkDM3kkyT
	8PeCCtbsQFIlMBlcc0eeEXbJL51Zvqt0Xhn7FBgzi9MhsgIxd/bjJHipsSdWf0nC
	xu/ts1X9A9Bogv1t2Yf815KjQrVu9dQFUoG/JZ5xKfs+PHN803zsHyANb35Sur/i
	BZoGWBPeVjQGhK7AaXQUSlQ5cPc97i7m99u00deEaYNsa6pssPSnDNdTdyAaxO0H
	wJ9JKKLl293kz8tAsvuCDNVBoj/QUa9D/waCaHyYGChdHdXJrBCGs3iFFXV6A5Ij
	lSCBrg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhn1cre48-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 07 Jan 2026 12:06:00 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4f77be4f283so2966361cf.2
        for <linux-phy@lists.infradead.org>; Wed, 07 Jan 2026 04:06:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767787560; x=1768392360; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jXpo5Dg7VBQka9vAkpK/fsgMzGFmUOfdUx5/PD+SJJw=;
        b=ea2s1kUgOEOf+UoHY7o6bscLAg3mXZVZ4Kw4VAdVqwlehIi69SbtXqS85qzdEs8L9x
         x4BwkBtL4vbMvioqDwO0GMSHUiKWZiLTnK9ilk4qOvfVfAXg6rIepWhr/JqZpLbfldFC
         1K83Q1nC7NOPlDiIGxB5E93MOxZRvI9hvGe+7VkDmaCvda+vxOlrkDhGDSbATiU1QasL
         OIjDV2p2slaGuv7AhkIT5vWyWnQ6LxxQ5Rv2O4Gi+DM2Lw0CiB7SqCOTaJu437TWP2hC
         I6tyngpzRQDY2X6xaYd92ZFENXPXs+gfV2S0mN+A9RpGIpioxfnR9LCCfH1LG/x//2ON
         08Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767787560; x=1768392360;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jXpo5Dg7VBQka9vAkpK/fsgMzGFmUOfdUx5/PD+SJJw=;
        b=n8R4/KnjbqGTCgP4/4Du3rN9f52+EvJyJXQVr9xCIG2qx7A8i8vu3mk3QHFLenUqWX
         1M95ZZuvzJ3v5GeT4qHgrlbmRjExVUAKT5dBI0m+2XV22sHpcehzQG0mDPjYPiRSWDjf
         7e4OOYwkPEPcetJYLO+lb56X4Ld2xvFrlIbyizQeQeKsDGFRRD/sZr5APbjiZhMLz7sZ
         w40VAwM+cIhZOwcaB8v2GQjV+gftjWKlfq1zQpNTlj0diKrmNMlS/xNyOuyzk6Ok+kel
         Xw9W1sYJ9NrxjtkFBtDO8zqunapuwJ8iBrAWN+WZXCqRWsWF7L2p1gqv3Nrtq9A7Wgn+
         Tx+A==
X-Forwarded-Encrypted: i=1; AJvYcCWbdVaCihreMAGWuPGzUjixy2MpkKhtcukYBoCrOtbK2BEb7yFCWy8ewcMyZwo1RNbHbhavoxXniEg=@lists.infradead.org
X-Gm-Message-State: AOJu0YyuE0qsp6YIbd9Xa6KKIz7/FpgfW8jcQF/I9+6jvlWPAs+voU2q
	eklifTESKFwCrj+eL6sQyr4Y0gETKVttmr8DnBpq5xXIIbuSoOwhV1AbA3AR7JTq/obn1wuQvw9
	kihT4Oq3A8Z3fU8mwNeVMeCO22JikuEs0RfUib8lresNjo3f6ipr5NWVMqqvE5a+whfOw
X-Gm-Gg: AY/fxX7a8pw8MdHxBUhF8bX6om9KtTObAprHhnDijGCjSvGoxiFxsiT6W9qG4VKlnJG
	KZvCfZgs7/756hTU684iVoKtgE/dqvNgb0VlEKXoEVjF7CDIb3u0cxEiL3ziqn7BBw0Kqc9nwD+
	0A6ZveWIkRdEWJKAFVMnszHK0nnEBUrlTAjoevV5d2MgCuasVrQfqroGGjAOViPBtnNSxjIZVSk
	Fq5Wt9IIYn4lgUCy4J5Dg672EwuhR9hnlWuSXg+Gg+CdZNu2eZ0zBaBgF0BFtd2Z/xOd6ErXWuM
	EVeRLwcgfKNminh+csNpwUyeX+ZGLBz41Q9Qt/jK1/5ErMBfygzQID193Y05mHCldPeJOvyvPsw
	JX5j6/SRrFdYk89AWxclt2rZdm0cHeP7U+fWSO/nAJFqh6xLNTSWcRWKZS+gT7GIsJUU=
X-Received: by 2002:a05:622a:143:b0:4ee:1c71:71e1 with SMTP id d75a77b69052e-4ffb49f6dc1mr20250561cf.6.1767787559782;
        Wed, 07 Jan 2026 04:05:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGTQzT9CN6wtGfm2PwlCCl6Gn/aZqv69AlP8pq+ElyIV23BjgSIJLrBUuo0uDBcmPXkR/JTIg==
X-Received: by 2002:a05:622a:143:b0:4ee:1c71:71e1 with SMTP id d75a77b69052e-4ffb49f6dc1mr20249971cf.6.1767787559186;
        Wed, 07 Jan 2026 04:05:59 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a27c8f3sm491325766b.16.2026.01.07.04.05.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 04:05:58 -0800 (PST)
Message-ID: <477fda29-7470-47dc-9325-c7226b77cd1e@oss.qualcomm.com>
Date: Wed, 7 Jan 2026 13:05:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/6] arm64: dts: qcom: milos: Add UFS nodes
To: Luca Weiss <luca.weiss@fairphone.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
References: <20260107-milos-ufs-v1-0-6982ab20d0ac@fairphone.com>
 <20260107-milos-ufs-v1-5-6982ab20d0ac@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260107-milos-ufs-v1-5-6982ab20d0ac@fairphone.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDA5NCBTYWx0ZWRfXyogvoy5aZ5pJ
 rUztnDcw48vbAJauVGLZkZIB13T0cYR4IkC6I/R8ldNRRXbm0E9H1MpSGCLGAEmUcdbPieasdwH
 uSLOZ/2X6pbxChMN7EDWmftgWkzM3uqbjMDM7wULqCggfpth1x9CBEZHbfgQz8ixkNDn0LQoNx/
 UkWb/G8dozzQkptXPluaBVn803mEHVBRK2h944ptHwtK265QyHTj6I0TQMOrCXQR9GgkQcKKGYv
 8hSjI6lBvrSiDPW/PyH/blr/efxBTcfvXmqQDRvE5Rw0FtO98mUBxzqdDvCMxjWNibcs6FftyoZ
 898SptPl23//nwj22LwPw4jpLBxklv6tB0i5IjuHzsX5lnfck/XcNhNWk9VW86e/LYSm3IvDvwa
 UOUAny0gOfkr9TbDAX9Eq7Ru6L+q/AqaVcmof3sUOG4Mpn9TOQ/k70+4Oh6VO/bs/tmQcnPKAD3
 JCQcAWXgvT+ytOBrpqQ==
X-Authority-Analysis: v=2.4 cv=INwPywvG c=1 sm=1 tr=0 ts=695e4c28 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8
 a=WWQFUNGd85j635JlVwcA:9 a=QEXdDO2ut3YA:10 a=AYr37p2UDEkA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: MGnMCnQBnb_BIdKIJ2zu2uk4FNvtEriK
X-Proofpoint-GUID: MGnMCnQBnb_BIdKIJ2zu2uk4FNvtEriK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 adultscore=0 clxscore=1015 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601070094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_040601_539443_87A06B74 
X-CRM114-Status: UNSURE (   9.24  )
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

On 1/7/26 9:05 AM, Luca Weiss wrote:
> Add the nodes for the UFS PHY and UFS host controller, along with the
> ICE used for UFS.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
