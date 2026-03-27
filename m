Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D67E310ED64F
	for <linux-phy@archiver.kernel.org>; Fri, 27 Mar 2026 10:07:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZP5dTjKCxTwqkQSVK9DzMBEGEbtDcLpaISOOliOoz8A=; b=xJfaH4C76empjM
	/xI4mk7fUPyFFs1zmFOxiBTVX/UZPJU3vyIBak72HVIaPBMjK8ogp6yn3GwX/HtkSvxA48pgINnQA
	AV0c/CHMCikDMGo35//lm/oqNe9V77AG5sF1qIJaOkVGHgYWHy3GVgKkBvU1cn/ZUgge8gGlvR2ob
	tHTuWCBwPGPVwqF8OaGY6vGYQumd+dLU0hu4kKL7zkpZbgtQdJifRPLuO2TVgz9R5zebzQxzvdMFH
	hcj8I+L9353mc9DysY3ReBUaYFSTJRRPttpPwCwh8UzHbyRcabCYwb82C6Jmj6ejBP/j+CRRwWjew
	10VBTBlOfycwD00Hb2HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w645u-0000000780g-1OUt;
	Fri, 27 Mar 2026 10:07:10 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w645s-000000077zz-1a3G
	for linux-phy@lists.infradead.org;
	Fri, 27 Mar 2026 10:07:09 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62R6vn3p3713711
	for <linux-phy@lists.infradead.org>; Fri, 27 Mar 2026 10:07:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Uu2XKU12Z+3mLskatlylPJqr9wXv74KUtgVjsU7B3Cw=; b=HVEWCBrA9neD1kAo
	pmsX4g0W0tPjBp74Z1oMN/b9owhufzKvFw15dgkNNXQ6GDo4NeKoO+Nk4ZhbqiR1
	Lq2R4SyX5BV+Q2SRWCouUQj3zFy8L8qjQ2bOjVavL9F3wTDh0kTGck7rsfy2Mj8p
	BMtbeIT+awTBxjqAv3YArkrVq5Nu9uBlzoBw0Q15nTGZ20nWYEF8YcSg4Kbtn5+s
	yH/I47362A+pedSZux2OEsDz5jrWzgffyalQgF2bJY8O47W0Ramsjd8SfMvWh6Uh
	oczZBCP7R0YGu1cEdTO0Kp3HKKA8DdGd/Q6dYqVkAtb3PQmo58Mg6iCawThLfQgv
	lxSqnw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d5hapsm94-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 27 Mar 2026 10:07:07 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-89a5b38affdso5984106d6.0
        for <linux-phy@lists.infradead.org>; Fri, 27 Mar 2026 03:07:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774606027; x=1775210827; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Uu2XKU12Z+3mLskatlylPJqr9wXv74KUtgVjsU7B3Cw=;
        b=Gy0UopMbFQzbJVw5cm+PsQmtOC4dKU3TK+Lb03zpsSEBHGFbXfjnbqTO35ZCZ/F2Mu
         wJaQTwOSGmI2CMXRQ9/0dOkGPD68DjSOq4TtrjGgnaztCXLi3JJ579RXYROWki0ZYdAT
         9zXDuj+5Qdm5Pd8sfrOUxTh+OKZAvliDzrniQBkcTygRt5LwN/2I2WCWaFQj47A1JKpG
         G1EF4m9B5UoaAJEyGBdBZ4wHKLHBN8DVaj7adr1+tFb+4l1HT4QAQCtM9e2lkfbT2Nr/
         2dGTQIgD8/Vhc8+ydd0AnDc58e5gdg/YoPbOe7zZ88XPcgotMw0T/Nk61rY5zJHxet4n
         KONA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774606027; x=1775210827;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Uu2XKU12Z+3mLskatlylPJqr9wXv74KUtgVjsU7B3Cw=;
        b=rNAu4loVteXBjVk3cvNq+RGKkdn+wvGbINYjjnP5XQVIsJ0wpbe7hxKcu9iXDNPZHn
         mKXCXuWHD25osltbmMgIXwOBZlAweUVoOaLhnXU1AOOUgblXZ8RtL4bIvt/HNGryMFim
         SeD1kmaV10djDDfuurtUb4i5NotEL8VVZJR0OmnXsqMYNHcgMQMAnW/guqjNQRWgos7W
         h8drRKj92dtR6J4sHe8JB7+XVaHUe1PYCrFELZd/sZXsh25L+HGN/35F6w5bpNZXK1Tk
         TgJ58YhcSplojisuNzCOjtAFH3+HTr+vz8OhWD+G5vz16O9XunHG7RJs5KGVswsq7wks
         3c3A==
X-Forwarded-Encrypted: i=1; AJvYcCWljwHgHYg5u5hBlXgQl1zZte3Ej0IwkQJXTKxLqjSqP5ofNhSb3Knv+88l7oezUkUCsLOrxbuxB6s=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy6r7r2Lop1mCTPwe1fR4vwentsIn/IHb++BX6AYCf/bN9yj/fQ
	YNcren6pA1qzQJ4ii//RPG/xzyfeDnD6xSUujJLGm3IAkM1qO0WMV6ceuXtlEqkdTsSnFvAW/ny
	eewJGmkalut4E35RUUtlitE10qIGRb/lyRE/6pJeNjeBTT3p53mhBDcM/+KYuFt9kh30z
X-Gm-Gg: ATEYQzx6Dv5y/PL0PN8fPfapao0Hf+K/T5bArduUFIQPiMFbC1ZoH/DjovR/ibT5Upi
	+9uWOsQC6xxtCcEbp4Tytxbi+/C+py+b4GSaLMBnwVTIXNgviGA/ief/fy3tkCBMVjSbzjvYf3E
	bC5KddyTfkUyt1qijDnLwvStPesU7F99t5g1d3D5tBwtYGzR2Cfs/fLMbcozXcsD6a9RnJlmlgo
	PGI43J84e+J4NuApfQKaZUMBQILX5ULpHheD79ruOvY5XL/MxaKraNDngP5dTHmmXYg33pUqfwq
	og/d/eONFtalQ0JN1Oa65MrHy4HmpTMjhnjUC+wYN3sQMyGbzXZPcvhmUBl+7nvt/tBbIeHcEML
	YMe8wyP7JefvjdtTgKU0754/qTM5IWn+hilHU1GbcUIUQxYy1XH5rwFTxKsTXjFK7Vqt+VSkm6w
	lqwjA=
X-Received: by 2002:a05:6214:21ed:b0:89c:5285:200e with SMTP id 6a1803df08f44-89ce8dd5ad5mr17277846d6.4.1774606026688;
        Fri, 27 Mar 2026 03:07:06 -0700 (PDT)
X-Received: by 2002:a05:6214:21ed:b0:89c:5285:200e with SMTP id 6a1803df08f44-89ce8dd5ad5mr17277516d6.4.1774606026260;
        Fri, 27 Mar 2026 03:07:06 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9b203c2288sm225074866b.40.2026.03.27.03.07.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2026 03:07:05 -0700 (PDT)
Message-ID: <7712fbdd-a225-49f0-aeb9-ebcbb9d5abac@oss.qualcomm.com>
Date: Fri, 27 Mar 2026 11:07:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bryan O'Donoghue <bod@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260326-x1e-csi2-phy-v5-0-0c0fc7f5c01b@linaro.org>
 <20260326-x1e-csi2-phy-v5-1-0c0fc7f5c01b@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260326-x1e-csi2-phy-v5-1-0c0fc7f5c01b@linaro.org>
X-Authority-Analysis: v=2.4 cv=TqnrRTXh c=1 sm=1 tr=0 ts=69c656cb cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=0SmWYRu_8F9rFwqJbSoA:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzI3MDA3NCBTYWx0ZWRfX6JLy8x9ENWKO
 7BqiRaTYaKvF4zPqeqPmbvusVji6ALtE33mIazVjTL4QXlX1vT61cIzkbyLZIKtGJ2aHYoQek82
 RUA1wbJr3QH3J1jgLxWuhuv2RdZWsJuMOamlIoE+g93i5Kzg8zp32DrI+Yl1VMgV3+9TWHSd73Q
 Atcy5nKDh1ILQPrpA2Jg6ZdGVnO1wVGlw0Lx/aHGpg8Fs72D/r9ZWc4apbjLMuwvXzSz+oLlY+K
 798K5sP93lNnSHQliILSDx8zdQhNiPuGkq/LIKfw2dzGwLR+f/tTl2iRtpRgqbrKkajSMJGNi0k
 TZi/yckFgtUEicXt9FVthY6gH5xxhCRC+VMkT6Pc5dpV/DU2a0W4TN+LungR2V6owLW+cedH0AB
 pWI+fDMK8j1hOkCeqbMCl6RbyXofH2Uv7vdYzUusBFk4rmBdf0ID/4YfubEAhNnTX2/8rdaEyLp
 fSel9M6wqLnMWqwWa5w==
X-Proofpoint-GUID: B6KToV5AhVcXXzENJbn72evnyOPiJ1EX
X-Proofpoint-ORIG-GUID: B6KToV5AhVcXXzENJbn72evnyOPiJ1EX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-26_04,2026-03-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0
 malwarescore=0 suspectscore=0 adultscore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603270074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260327_030708_447220_7193EB1D 
X-CRM114-Status: GOOD (  11.83  )
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

On 3/26/26 2:04 AM, Bryan O'Donoghue wrote:
> Add a base schema initially compatible with x1e80100 to describe MIPI CSI2
> PHY devices.
> 
> The hardware can support both CPHY, DPHY and a special split-mode DPHY. We
> capture those modes as:
> 
> - PHY_QCOM_CSI2_MODE_DPHY
> - PHY_QCOM_CSI2_MODE_CPHY
> - PHY_QCOM_CSI2_MODE_SPLIT_DPHY

Does the _PHY_ DT node need to be aware about this upfront?

If we have some sideband signal (e.g. the sensor driver specifically
requesting C-PHY mode), we can simply throw all this complexity into
phy_mode + phy_configure_opts, all at runtime

Further, the combo/split mode may possibly be selected through
aggregation of requests.

The question remains whether the sensor should have a direct connection to
the PHY itself (i.e. phys = <&csiphyN> or of_graph straight into the PHY)
or whether it's going to be translated by the camss node (which would be
the one holding a PHY reference) - there's probably surface for adding such
negotiation logic in both places


Note this is a question and I'm not aware of all the possible combinations

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
