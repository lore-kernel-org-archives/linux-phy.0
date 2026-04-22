Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA2FAF9B614
	for <linux-phy@archiver.kernel.org>; Wed, 22 Apr 2026 10:43:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=//f+Ds3BGky+1QxO+JtxKisx/ihidAOVzztZTm7KCuY=; b=Xnp5YBrXtQNJy2
	Wkh94TWduH9TzNYUeWXKwHksokQVFqi0uNrlkYM0Hfmdo5mmgpfxFjjiORxEMtB5jnww1P8ZFzSnq
	d5wXx95Sz5NzRrQfXGtviKvXj+c7lGJ1oeN7Cl+IgA3/DCAzhfec37IQLV4PBRb4Cp5GnhknLxD/t
	Xt+Pv/52WfDYi09Rzk05Hn4/QBT1yhEwBcS2A05W/j+rXw54Yifu+u/yLOAGNG4phx8A5MFsDQ3nf
	XipRdIJ6oLGvbWU2095LH0ScwMLlhBNvSfign+ECoiiK4oH/lHqgSPPjAP34JD1AAU7UgMiE7LBNJ
	9SxztBWvhxLMZmF803OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFV2u-00000009xog-1QVe;
	Wed, 22 Apr 2026 10:43:04 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFV2r-00000009xni-3YcC
	for linux-phy@lists.infradead.org;
	Wed, 22 Apr 2026 10:43:03 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63M98rNb2063464
	for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 10:43:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OGoandW6NCRWawexIx9PyDzPA9ZO9OfXwwgw+bG5ti8=; b=f7b3V42nOJR9eQ2C
	QAoLe0G65JGEWtU8Feg6S1LIBsPxtmk9oaKlSkOhm9sI7YPuGPbiSMRf/2H81M2w
	3HM+PP9bJoNeniPmEFetXYdgKQV9iAGUZp9Wbw1i+E+fEtgVD+Rdb2TsmIgq3d+H
	r+6DCRDfHaO5mDh1ox2B6iSvuirT+PoKZG9f4idKYVI/6g8QGm/mYVX5iFKupK2i
	ZdiDZDGA61AFlaWMiiXr1Vkp20T1bm0IzwO1JRv+qj432WxEooSrJ+QOsByRvsPZ
	n95hViauxZvUBkAlOnpa5eHWq3gYgCjrkf1gVBStAyBMwLAWP2hXJy1BJ/3A+8Tn
	YGmZiw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dpenhk1af-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 10:43:00 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8aca281aaa4so9995916d6.1
        for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 03:43:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776854580; x=1777459380; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OGoandW6NCRWawexIx9PyDzPA9ZO9OfXwwgw+bG5ti8=;
        b=c24yM8CzNP553KAOQsxclnQO4HywECQCH/O+5+/Ow+byfLCFTGf6Yc0jJATW/Y8lyk
         ivYZEDmnoKniuOUQA9c5jmw6pb7RR61GVxYtq2Zca/TbIf5biR568oKGvKmd5qIomiix
         Q1U3ySvkVuyuQPNmiaHYPxneMOr39dn70TYItwvR09ybI0OhybJcF+KWwOXIbDKP1U6c
         jNkgvC6GVMIxxZQlHwHJWNBFSa0rsV0BLVVN3LU6+8YnnunAkivFatYCw+zZ0B8NT0P6
         SaukIdIsJMseZKFjPDuoQ04G1GUN3UrqUoV5RPkwblK1/fzgLLoOV3dCGMR0YFSuV3A1
         64lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776854580; x=1777459380;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OGoandW6NCRWawexIx9PyDzPA9ZO9OfXwwgw+bG5ti8=;
        b=eTXLK1Jp6a8PYcaaIQBMaBPmVw7GXbuqTmDDWSHNdTJ6zvdJ9g/eAl8DvTbS5o6lZr
         meSvcFujbENUf97fCf3KcUuuOcyPeYmBpMWPuHAMC41KXvSOJznOvIFfxx0nhCWaeGEQ
         AIP0TxIvPJ2on7H3mdcZ+8zUMBCc1LX4GZ7HyC7JOB04qyYklLyUarRQvnxdedlqFbCf
         1vNlbkzDIbzzrsUF47hnvRV+oumkrT9AJOiVbdmaADqvvyMj+9cFadrvSrKA8oF55aaF
         5X+Z4GJCBjkh5x6RdLRfQ2JJF72yMMiaIolCq6sOvfqBi0a/46ny4p2hoj7gW4csokj9
         BNjw==
X-Forwarded-Encrypted: i=1; AFNElJ+218XSBwYB5DMwtIKrR5nivqJVSfsD8oKsXPHMPUt6e5SerDYrwzhWRey1Q0oo+0dttPZumVGhdpQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz9tHriqV9qgmRB1/0eVnxnrY6R9z0SfYJaTRN3xlJGDOh4hQCr
	/dtybeDcSsF8pNv0rAGbnwzxbowfGz56rcrLvRn6P27Fz3Lbf7OawVp9TnG4WBzWK4/TpVHgmEJ
	ovWGqNdEDMyZ7SGdQm0f5n7CSfRGgC/nHF1elKZ2mso0kmIlWObTyIszNoNJaXt2IHPTi
X-Gm-Gg: AeBDiesGwv7XdBb9/rHkyW91tfjrETFeXpu3NLEjB2AV8p/tH+0ISWu863JYFpTO0PQ
	V9rLDm77meA6Vs0Ter8H2E9Dj8hP6UJo+j/8ThR94wXFVkFN5d8oMfesBV4JHzCGwhIGtv+4mGL
	xh37Jg+B72EwiXJwT6CbsP1m1sUa+9KFwj4eSJ2gfgXT2gl6tIEkKbVG6fjs1naYFClnuP380G+
	wit633mjVLL+ZeWqBfEIPUEb/4OwTGLlAT5VN5v95lHiFQkfgMyD/mENJ9NFIZ2We9XgNHE7oAw
	1Otksj1tfNzSr6xcqZGNhoTPPmsp3EpoRDYxPHKlBKmD5frCMebtlahWSonE5UhY3Qx/9EZBJ3A
	AGmWjhlq+V2UxDdw9WV0OWGa2ddhKJWK+51RdHWM3CVXVHUI9ZYD1WORVko36VHguTE0ODavUiW
	LMsiqBVlq09Dnh3Q==
X-Received: by 2002:a05:6214:629:b0:8ac:4fd1:2d5d with SMTP id 6a1803df08f44-8b0281d4c8amr253288176d6.5.1776854579756;
        Wed, 22 Apr 2026 03:42:59 -0700 (PDT)
X-Received: by 2002:a05:6214:629:b0:8ac:4fd1:2d5d with SMTP id 6a1803df08f44-8b0281d4c8amr253287996d6.5.1776854579384;
        Wed, 22 Apr 2026 03:42:59 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ba454d1bf00sm521636366b.33.2026.04.22.03.42.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Apr 2026 03:42:58 -0700 (PDT)
Message-ID: <df40b4d1-6133-4d49-a7e3-47cbb2b058e9@oss.qualcomm.com>
Date: Wed, 22 Apr 2026 12:42:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/5] phy: qcom: edp: Add SC7280/SC8180X
 swing/pre-emphasis tables
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20260422-edp_phy-v4-0-c38bef2d027b@oss.qualcomm.com>
 <20260422-edp_phy-v4-3-c38bef2d027b@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260422-edp_phy-v4-3-c38bef2d027b@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: vHKUGiwwOunb3K2jnBJvczNL3DLPDk1d
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIyMDEwMiBTYWx0ZWRfX2wf8nAXi53MB
 i2arhNTZb993ZG4FEat9jWiUkEm0u7cDCvp7SN09w7bDVtLp+1yJELCrMh0rBdmdSQXZ6G7uRGS
 Goqe29MEe32V6Z8NupC3Im+2Yw2Xz2j3Xnx6cNGPl+zXiQK4AaTVPw05jQ4SRUkPJtKZ+6cg8TH
 Z5JJ+sMffeHzPEuAZVHhvbIl8+cokV4kot4Y4zecug/Iq/PcnDcfK6QjCdPRRoOKZfe7mmpjlH+
 gli4ylYjAQczhqIfWp8DDdcCICf3I0By4RU2l/NMKxNA3Hof7JRHdIfHd7LRoTKIHAKy4hpDu2D
 RNcdnu/HIIgB7hHDQHjks5fnItQfeorIviv0XY1yhehmBhaEfWcnvi/gjUXNTOiBTuPKD3mcnqj
 uEQoOqrsh7DmnziUGz7mm9kvrn66oQnis2QvcMcwWfpO6h8y3MmY1jL/zXZ2KfCjvjx5dUfVWL+
 EtzZgd8RQPAvawhmyBQ==
X-Authority-Analysis: v=2.4 cv=WKJPmHsR c=1 sm=1 tr=0 ts=69e8a634 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=9UQlOuGZ28LDIwtST30A:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-GUID: vHKUGiwwOunb3K2jnBJvczNL3DLPDk1d
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-22_01,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 spamscore=0 lowpriorityscore=0 impostorscore=0
 bulkscore=0 phishscore=0 priorityscore=1501 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604220102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260422_034302_018605_6D66B450 
X-CRM114-Status: GOOD (  12.54  )
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

On 4/22/26 8:01 AM, Yongxing Mou wrote:
> SC7280 and SC8180X previously shared the same cfg because they did not use
> swing/pre-emphasis tables. Add the corresponding tables for these
> platforms. Since they have different PHY sub-versions, their eDP/DP mode
> tables also differ, so move SC8180X to its own cfg instead of reusing the
> SC7280 one.
> 
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> ---



> +static const struct qcom_edp_swing_pre_emph_cfg edp_phy_swing_pre_emph_cfg_v2 = {
> +	.swing_hbr_rbr = &edp_swing_hbr_rbr,

For eDP / low-Vdiff:

I believe the RBR swing settings for 8180 should
instead be:

0x07 0x0f 0x17 0x1f (matches)
(the rest differs)
0x0d 0x16 0x1e
0x11 0x1b
0x16

The preem RBR almost matches, one byte is off
(arr[0][1] = 0x12 on poipu, 0x11 on kodiak)

The swing and preem settings for HBR3 look OK

For DP / low-Vdiff:

.swing_hbr3_hbr2 OK
.swing_hbr_rbr - I don't know. The docs are unclear whether the same
settings should be used for RBR and HBR3, but maybe? There's a
separate table for mini-DP but I doubt there's any poipu boards with
such a connector (maybe some obscure ones)

.pre_emphasis_hbr3_hbr2 OK
.pre_emphasis_hbr_rbr same as above

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
