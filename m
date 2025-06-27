Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E173DC77B7F
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jun 2025 15:19:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VTAqV8g8Nqo3WZrd6g52JooO5wy7sP4/74RBAr2Y2nw=; b=oYZFOmlSFVrkyW
	leVkF/SSz726xqalEUpPg5RfxLXvhIT5iGn1Fk4aejw7Iu0/vRQBx1HA7BFMe62d+ivCGxscOqS5H
	u5L2PV+tQLeasWki7m43Nf9VwpROhQfhD4ZegTSWQAoBjfqNYrcKHH5mEV6RuAEDOALb05bi3ME42
	yNWh2P463wn+xB+KX1rbo9kSuvKqXVoJ0pTj4QtdihCOiz4lS3WER/MZ4kgBeqOdSE41SLAQKhXWD
	k7zjyGYjq6htnw2CBMmOz9TpwuwKooE4Xs5ijawIC1n5mdi5ezbT71X3sseCpSQeXOIDkphRQMhfr
	2OB3EXQH0QDhjLvDiBXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVAr2-0000000F3Ws-2HYY;
	Fri, 27 Jun 2025 15:19:04 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVAPz-0000000Ey1T-1sjw
	for linux-phy@lists.infradead.org;
	Fri, 27 Jun 2025 14:51:09 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55RCCPN6032645
	for <linux-phy@lists.infradead.org>; Fri, 27 Jun 2025 14:51:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7rtraUnuZEglIw9bM3jvt7JTU0MMScfXHqqtKcchIKk=; b=epyDyZSzyFl+MJZf
	VvTrWRZwWi+CJrg4dBLVr8AGET00Udrlwr5ChES4CENzsHTPyZdBKPD4JsXXglmR
	/AfeHOHbg3nAmIBV60ucOmyWysINbAAXOUgbzaqM6duhGmOnqvL+wdCyG4Y2Q8ca
	pSHmEJk8SB6igGgoCBHNAx/E2cUHluoxLCpq3i+XjGSdhv6AkpLSmFfkl/cV4zwz
	eA7jJgsde/V/c0JrgcIqqtXogfhc4gmStUQl0mIxDgeGYa1S4OtPIvuMkmneYunO
	GnIDkBuG3WaVPtHMK/oYmOGt17T5FQRzBeTK34DC5nIvdiC4L9W2y+bfMWDgXFTx
	Eu7mQA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47g7tdh78t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 27 Jun 2025 14:51:06 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d21080c26fso34329185a.1
        for <linux-phy@lists.infradead.org>; Fri, 27 Jun 2025 07:51:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751035865; x=1751640665;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7rtraUnuZEglIw9bM3jvt7JTU0MMScfXHqqtKcchIKk=;
        b=vWiDN5ZpVV5bEr+vDOW+znoBO1eTnpGU76/TCEwCGABrWkOi0cN5slGYscwGPcpXr1
         IWk6nSv6703r6EINl/cpCBt/qyOit8/Fl7L0ZQwrvOKWtxzeFq7EiFjvybMHq9V4v5aS
         PPADqrEpQ3YaNbcakv9KGikoz3sh6w+rNzq5IYqJQGmJAr+B+rWsc1CI1iQp+UKVSs+J
         mc2X4l1UsC1XzBTR0oIfz+xD4CkFfYtEVqLQ2jpl61H3+JLjTM7g62pxUFC2AZ1SuqIc
         260QM+DEFfKMF/E4UiGRpNVKfkO0IPiAAHetNEOT3NUHPj+ayyWWLuRkCXERVEvQZ7wY
         zvIw==
X-Forwarded-Encrypted: i=1; AJvYcCVNj/n0hMiSJPKIRRRX4jdzRJFwxu9vhHbIrx5aPnM5BeynaVMKU/A/9xsdX1QpkV6UgN5mSZ+5MHk=@lists.infradead.org
X-Gm-Message-State: AOJu0YwqrfBs59bNh1WgnUExrr6XEDTYil5yuYPIvjJp9zyDsC8+28Z7
	9ptphRejpuZZ5k9sLWGJXTZ7Uk0PUANHp4ErMHJideS0ynJEqIlESkzk2UPebcd5tnaUR8q21AH
	xZx1yUpCEMB+lILsxVgP1iE0BObRHNd3JqwmYINXmypMvgp7Kjcfgf2hHtETq7qzN4ED6
X-Gm-Gg: ASbGnct4ZlpBKFryZ+sHkOGPlamwtqDFAaIzQrZ+DXOLAYvL3yBiKFCl8k0FG8Y5FVe
	xhTg6JDAXQCrCQonbGNJ98PU3kfE7iztgXGtO37Er9sFi4Mtupt+EXuwWJIjxAadwbUQo57UMzg
	x72yS/bRd76uPpNNrocDAofshbyMtc+0BrSJlAq106b+QJYHc4ZV2vG958zUnPOQ20/rzZKctuE
	V08ojh4B+JdOJUyIIy6hDVZ5DyOjpEnvOsGGYbUWMvFT9h4WKcVwUIj2lHZeizZ+QKXXiqHzHeo
	294CuqVkcrkfU0Q/QR3I+GFSViMMiqpwUCT2SUfJxFBHGwZtAQjCy9eD08XaBeCQu9NFoR8GD8L
	+q5M=
X-Received: by 2002:a05:620a:4390:b0:7cd:4a08:ea12 with SMTP id af79cd13be357-7d4438a5772mr187162585a.0.1751035865310;
        Fri, 27 Jun 2025 07:51:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHNBrqmMSfnZF56yQ8HHV8zsPd591TqWYeI7+RBqNhUzZBbf8gF6QKBgxQqjSPo5Eech9fVsg==
X-Received: by 2002:a05:620a:4390:b0:7cd:4a08:ea12 with SMTP id af79cd13be357-7d4438a5772mr187150585a.0.1751035861886;
        Fri, 27 Jun 2025 07:51:01 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae353c011desm137341766b.101.2025.06.27.07.50.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jun 2025 07:51:01 -0700 (PDT)
Message-ID: <25ddb70a-7442-4d63-9eff-d4c3ac509bbb@oss.qualcomm.com>
Date: Fri, 27 Jun 2025 16:50:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/4] arm64: dts: qcom: sa8775p: remove aux clock from
 pcie phy
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, jingoohan1@gmail.com, mani@kernel.org,
        lpieralisi@kernel.org, kwilczynski@kernel.org, bhelgaas@google.com,
        johan+linaro@kernel.org, vkoul@kernel.org, kishon@kernel.org,
        neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
References: <20250625090048.624399-1-quic_ziyuzhan@quicinc.com>
 <20250625090048.624399-4-quic_ziyuzhan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250625090048.624399-4-quic_ziyuzhan@quicinc.com>
X-Authority-Analysis: v=2.4 cv=CPYqXQrD c=1 sm=1 tr=0 ts=685eafda cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=flLoF9dUt9D-64fZ2z0A:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI3MDEyMSBTYWx0ZWRfX4ygCeo68NSIO
 4uZh2x39slgmleqL3fGIu4Qa0+DBaZPF7LGdz0XSAcSefSmbFiipQ5ktI2EKFURYvxTUpJ/uJgj
 HGCTASnSVkss/EupgiuaYuwKPojrTuVfwLr9Y+db3+FDlZ5R3dEfnnqsLCCLCh7899bYWIMumZb
 5IuhOgIXJBZbHYqmv/pCgcQtOIlCiQ4t/LBiQ/spAB8DE/0G/3LAr7xMYPdYUrU1nkFBGJabwv3
 vcDp43PpGchbPt3tyJUQIOg/RAvNaFpByny29ZBkTVSWHwwaT2Nafm/dHZZlx5tDpBEK8LdZ1MR
 KhQq0zrpYJ3AOCqD22sfGhnah4JvzKEku06LFOw4R7PIjW+7E6kDtZjzsVXUdW2rgtuIjwvlNJf
 A/kPAwu4mD4GfCtI694g8h1tm0c1OZG7mhIAgqb0rYcediTbiwfWmSqriWSSqkPL9UhkdIok
X-Proofpoint-GUID: ESiOEmd140GwYJ7FaYvIjl9jqGO49dFM
X-Proofpoint-ORIG-GUID: ESiOEmd140GwYJ7FaYvIjl9jqGO49dFM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_04,2025-06-26_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 mlxlogscore=999 lowpriorityscore=0 malwarescore=0
 impostorscore=0 suspectscore=0 clxscore=1015 spamscore=0 priorityscore=1501
 adultscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506270121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_075107_497304_9885FDD8 
X-CRM114-Status: UNSURE (   9.07  )
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

On 6/25/25 11:00 AM, Ziyue Zhang wrote:
> gcc_aux_clk is used in PCIe RC and it is not required in pcie phy, in
> pcie phy it should be gcc_phy_aux_clk, so remove gcc_aux_clk and
> replace it with gcc_phy_aux_clk.

GCC_PCIE_n_PHY_AUX_CLK is a downstream of the PHY's output..
are you sure the PHY should be **consuming** it too?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
