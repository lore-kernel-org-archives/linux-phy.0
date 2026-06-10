Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDA64CD8CB9
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 13:13:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yuzC/i1fQpxPaQgnPCZUKsO9S6YBjTCoYfiwra3av+s=; b=WCshUF/6hb24cF
	h9mLfq0FBheU/uW1B+sarjoUsV5CsG/K6yXrCx9Jwkfl144mYCHQyhrU2lq5Ua+3XD7JbwX00ixkZ
	aOiiBvQPpJ1fxmRFQY3OmYtFiwdlzYVWthF7DIDhS9grqHtPb9q8690lyM6zSvjYpn94RSDAOGRsS
	f7WaLlQi1ZBFsIij1DRLX5D9i1Fr62sIK0CzrBrWcMwFcFv25Z6Wm7Bts25usM3duv4xTDhqlU1hI
	iixdmGQodEh5ddiFhY53ByTX/ORUwj77dHpJjde0sBkHwQFamIydtQAaRKA4RRJjAqWKeP3VLLLIE
	m/wrb2PVElzOv//5KD8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXIk1-00000007i1V-2BA3;
	Wed, 10 Jun 2026 13:13:09 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXIjz-00000007i1A-2DHf
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 13:13:08 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65ACCL351554756
	for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 13:13:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qaSgPTMhlo8CQK8cSLxNg0Oqjf6PBr9dF4U4OY2jF/U=; b=d/kx6CLgd6zQUrwP
	hhmIoyfQN/yAa2wZXHYVkz/3dhUpgTCsVM+nQKg1IPOs5JJJH8oTtfO7k5PnRorA
	5yCO8l1VyXHXODD2wT/S+AwqJB/BT2lKltdKCr/wHTEZfvD1FQpmGRoIhXoRAiPy
	kHXlzJEUqdDpt12JphD5zOB6gleeQghxeC/XDQrKGMR8GrDDanDlC6650ZrKhkrd
	VTUg8HdWVQ1OqNWtHFAnc/eMOI+JnvtmpAi/mIw12441z6PrXOSpuetNP5nLcerX
	hcFniXgNBUzZXF2F3HfiWq1V6yk4T1H5ByQjyU/gdEVpdy8sMeKAKth6zloxMMZ/
	tbC2Rg==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4epwnntky0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 13:13:06 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-6c4271166f3so302197137.0
        for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 06:13:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781097186; x=1781701986; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qaSgPTMhlo8CQK8cSLxNg0Oqjf6PBr9dF4U4OY2jF/U=;
        b=L20cUS06nn6xZTJD9GqXl2+ZY4M2q7+ukLqbu50TXPNRC7fyqus8XChmrUn49Zo2Jh
         jlczjLoxdD/gkdK1bAWhGF7qtDeJelgIi516gmNUFJsQKQFnUrn9lfU5ftrBfGl9ntDz
         OLXrnaa5gzxbdMyf25czoBh/PJnI/bwRDSk2SdoIGRd238pZAqgVdWPmp26g6MeRyx0G
         9zfXLwLvWJ4dkvtff+WeNuJ3ysgE+s3hazw+oOxBxMu+1Sps1sqVP0p6MtSvJ5i8pohI
         hqiGpCjyB9EhFfRG8bnfsSDYg9anx2fWQoRMe8axTT/6Z5bHTWBCKyF8IumHqSyvSTT6
         NfIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781097186; x=1781701986;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qaSgPTMhlo8CQK8cSLxNg0Oqjf6PBr9dF4U4OY2jF/U=;
        b=fIPs1l0/FzzcdAzN9V9KRJEMZwMFBWuuTIR0fpBrNHE7/OVXLARRf3j63kMi9efa7l
         UeGzHtqJ54xmtULGIOZESUQJT+M3N19EMxRQXFUa1n9gaQelFhGRgsKe/rgZHI5GksfK
         cfnOxFKhcuyd9qNGjyS72f4ofAsMPjmQ7qBSf7wGXlOi3krrFGGBVH92QPu4AGthSga9
         al06V5lLDsG0Gi4LMNTyl/qYFYK+f+iUbngU6AktnSrzUWalSfVrxZJdVsa+6ks3P52s
         ULD4vJonkVUMHjIFDvcMRXZubROCaL/lJRYCTsxfT1QNbmrmkVnP+u/oe2Lj6ir8n5Io
         QANw==
X-Forwarded-Encrypted: i=1; AFNElJ+4v+j4GN3C0TQMBBYcE6jxeXt+eWsp8UCl5WYw2G3o9sHblHtc/FOTRcS4epw3fw1YIlSXQ/qrT7s=@lists.infradead.org
X-Gm-Message-State: AOJu0YzXxJDGzxbhs5+WHQrql0j4UFa8tqcBKALT0LcfQDQuckNObnIc
	OgNioT1E9uIBFEG3QqFlRUOkI8JW4neGV/lTi/+8kTiSfle6cg2ClLORjZIQYJMuN7oGa7RIzxZ
	6t6aOj+Q9y3LcP7ZccyPxjn+dBEsC2GC3oC6ddiaOTjUQKN+e7G08M3UKqkbsqjWwGdYo
X-Gm-Gg: Acq92OFvEl2HkPZH5ZxcQSi4WkRrXs8ooVXQf15DiMfDAoJM1915SZYTIsNKs3Q3XtJ
	62k2cE6Dmjx/ZYgz8wdH9+mRhAMYd3M2wB3gpgyk6+iyM9m4ahK2vjvToFQXMkw1ne+Qbvs5m7y
	Vp7a9A0Vu6AUFy6I3m5sYpMNs78A7ZiB+P4OkcVDmjttzP+lLznNspsQOqfe3aBJIzwDGdbOKaS
	Zpj1yURBHghTExQxEoJOFFs6HCR7lgSf6GkN9kfIRVL1mxdb5oEw1bIvdXiOo3ruwOUVLnr4DLx
	0DaYFzLrjMxRLgF4pLH21qN1gB4CdMnSPPD9Co6c3MRYmpPW8EUVvnwTjhiEQ1+wPcDSkEouuTX
	6INd/2wfvHxglhPEIDRYSz8eWFqes4MOLtJNKXubuAze6rWk0/N6Fa8k9
X-Received: by 2002:a05:6102:f07:b0:632:8717:e553 with SMTP id ada2fe7eead31-6feff065149mr3913059137.7.1781097185749;
        Wed, 10 Jun 2026 06:13:05 -0700 (PDT)
X-Received: by 2002:a05:6102:f07:b0:632:8717:e553 with SMTP id ada2fe7eead31-6feff065149mr3913032137.7.1781097185087;
        Wed, 10 Jun 2026 06:13:05 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bf2f2da4447sm912289566b.10.2026.06.10.06.13.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jun 2026 06:13:04 -0700 (PDT)
Message-ID: <852caded-eacf-4ac1-8fe5-83dd9285ef11@oss.qualcomm.com>
Date: Wed, 10 Jun 2026 15:13:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/4] Fix up QUSB2 PHY description for MSM8996/SM61[12]5
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Iskren Chernev <me@iskren.info>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260610-topic-8996_61x5_qusb2phy-v1-0-d7135980e78f@oss.qualcomm.com>
 <b05e860e-ace5-4399-bbd9-493f7bbfe74d@oss.qualcomm.com>
 <cnyhnyoce6v4d5roijrceuzd3ujvvw7ozklulaxkibptvjancm@cqbqu2aa7bz6>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <cnyhnyoce6v4d5roijrceuzd3ujvvw7ozklulaxkibptvjancm@cqbqu2aa7bz6>
X-Proofpoint-GUID: fsGdpC8pt8pL7HpxBA7tO--xbHGAph8o
X-Proofpoint-ORIG-GUID: fsGdpC8pt8pL7HpxBA7tO--xbHGAph8o
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEwMDEyNiBTYWx0ZWRfX5hAjlFdZCyZM
 ekefWrC/082iSF8BGp4Bx3oIbhDeVls6s1DGpWp8pFJkRdYHRWnyU13LyESu96Cx2baiMObk/Mf
 NdX8yKlnrA+FNDk9Tw7mX4/s6gx6Eblq4LkoQtC5bKxeLyDV5B8zOXh2+OavXBkTn/A3WNECeSa
 AwfpXwYnDzKcy0DnUCMjk3s5JxksIpGFIQ+nheIubV0OcikGDJ6vcNw7lV5c2Nz+hL52O4RHkBv
 8RU0j+nIwoX2W0DZSi2+zwUSz99MZQwFmq5BlBMrThzwfuPduK34CfGOtbOH7SS9oc6jhvZPRv7
 aPbAB4epXJT3vURWNoxQW1FpUh2zNYVq0bCQIcqXdTsAfB4omkB/DJrXB+bY8/xMDbAeSp82Q7m
 2e6Qzu9hzeskHDseAzfS94fgBoYSIMAPas/XttqtwCdf8Q3qq7fWVxYo8R5S/smVW8GeMSbporQ
 dxtzUIe7X/t/1Hu1sLw==
X-Authority-Analysis: v=2.4 cv=epLvCIpX c=1 sm=1 tr=0 ts=6a2962e2 cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=nlUS1CZQJJjccDyTXbgA:9 a=QEXdDO2ut3YA:10
 a=gYDTvv6II1OnSo0itH1n:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-10_03,2026-06-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 bulkscore=0 suspectscore=0 malwarescore=0
 priorityscore=1501 phishscore=0 adultscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606100126
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_061307_712041_E82FACD1 
X-CRM114-Status: GOOD (  15.57  )
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

On 6/10/26 3:03 PM, Dmitry Baryshkov wrote:
> On Wed, Jun 10, 2026 at 02:49:31PM +0200, Konrad Dybcio wrote:
>> On 6/10/26 2:04 PM, Konrad Dybcio wrote:
>>> The MSM8996 QUSB2PHY was not being guaranteed a power source.
>>> The SM6125's QUSB2PHY was believed to be idential as the 96 one. It
>>> wasn't. This series tackles that, freeing us of some dt checker
>>> errors about vdd-supply not found on MSM8996 boards.
>>>
>>> Compile-tested only, but docs confirm my findings..
>>>
>>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>> ---
>>> Konrad Dybcio (4):
>>>       dt-bindings: phy: qcom,qusb2: Straighten out SM6125 and MSM8996
>>>       phy: qcom-qusb2: Fix SM6115 init sequence
>>>       arm64: dts: qcom: msm8996: Add VDD_MX to QUSB2 PHYs
>>>       arm64: dts: qcom: sm6125: Fix QUSB2 compatible
>>>
>>>  .../devicetree/bindings/phy/qcom,qusb2-phy.yaml    | 31 ++++++++++++++++++++--
>>>  arch/arm64/boot/dts/qcom/msm8996.dtsi              | 10 +++++++
>>>  arch/arm64/boot/dts/qcom/sm6125.dtsi               |  3 ++-
>>>  drivers/phy/qualcomm/phy-qcom-qusb2.c              |  4 +--
>>>  4 files changed, 43 insertions(+), 5 deletions(-)
>>> ---
>>
>> Note that msm8996pro may need even more looking into, but that's a
>> story for another day
> 
> JFYI, MSM8996 Pro is being used in the DRM / Mesa CI. If there is an
> important difference, it would be nice to get it sorted out too.

reg   96   pro
0x80 0xF8  0xD0 [!] QUSB2PHY_PORT_TUNE1
0x84 0xB3  0xB3
0x88 0x83  0x83
0x8C 0xC0  0xC0
0x90 none  0x02 [!] QUSB2PHY_PORT_TUNE5
0x08 0x30  0x30
0x0C 0x79  0x79
0x10 0x21  0x21
0x9C 0x14  0x14
0x1C 0x9F  0x9F
0x18 0x00  0x00

apparently this is indeed SoC-specific (via docs) but also apparently
may not be very important (although should be fixed regardless as
some designs may rely on this)

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
