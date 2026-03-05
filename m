Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69019EEF33D
	for <linux-phy@archiver.kernel.org>; Thu,  5 Mar 2026 09:14:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B72+KtMb76Sqh43RtDF1rVja5SDN3YxH+uxVHJ9HSXI=; b=CYE9s7is9Nle6L
	SOeqD6pvXDtfDfmzZgx5ekmKAvA81ZYJ2IrSe6YwKiB5jIxc0xmlQVq43u8KBEAzRFoZuI3OcUlc5
	qhbCBO7T84ZReEiiqs+rO1+ed1Ygg7/IbQlaO9ux2MCM14wjlewyjnLB3ZYPfU9qhjoUik3yJwG7B
	edy6HzCjStsGqRpR+r/KBqh0XdPWRyvbBlZo/arWQ4eGrYZ/APh95kI7iv+mItK3RzCp0x/VVAx1c
	wMMpTcealteBj2HEkS0apU6bqDl7+9JzAy6qQbdqfa/4T2UvBf3enQtxiMsaptzElHvUDgBxvemti
	m/cav6ghDT4mtRcGhXkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy4mb-00000001Kv5-0UPy;
	Thu, 05 Mar 2026 09:14:13 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy4mY-00000001Kty-0cPe
	for linux-phy@lists.infradead.org;
	Thu, 05 Mar 2026 09:14:11 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6254tXRE218418
	for <linux-phy@lists.infradead.org>; Thu, 5 Mar 2026 09:14:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3GP92JxJ5XdTy95M9wMZ60Kmbd0bBaggFoNOnUj6RJs=; b=S59wHPBqzwn+0HRq
	gtYBzZd7yTP0l8Vdr2fmgaGAhS19BcZvFGM2Hp6KqPNcWN8SkcVyVqHF34IXTRz4
	BnJjyGjNeZGE0ygD9gFziquvChoGWw+LsjgmAl5NAhv5BJjPhvJFyHYozMQxKSP3
	H24dZff6i7ZIOOV5NMw+/dbrFBeeGvLEbiPQjzK4yMSCWz2Z+BrXqZB7iHQKAQDF
	28XCwJ3Hmey7d+HKnYmxi3atgHW7V+5rmdV+Vw15DOITebupNLTN1kr6H726tVbn
	+QyJ7t6hBgFYMCeEmI25LXfLIWcpigNLAIAQh+KClaDw+MRDT3n+/nDsYT+jmr0Q
	OFXvKA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cq380ru08-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 05 Mar 2026 09:14:09 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c7177d4ab4so645867785a.2
        for <linux-phy@lists.infradead.org>; Thu, 05 Mar 2026 01:14:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772702048; x=1773306848; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3GP92JxJ5XdTy95M9wMZ60Kmbd0bBaggFoNOnUj6RJs=;
        b=Oy4RI/a+ovvYgdp8pneZfSfO1VZo643fYo37pvkqre99UOPacTymGaFoNbF3SCAu7h
         OXBV4cg+mGkZLhs+Q5fR4HBX+G3zfTyy96VoMxagORhddIVRmQTHwtU+jL1CZmjXDf/l
         ikGu8G+i+PS1jcmR57fivddU0UF9aBZp5xAIfp1ZlwqYen1/zjMVa5znBHk5W9zQC7Eq
         XrkNtEK1qkK1o8IQxTnpCWJ7Fh9hKHS8WR5k4qnCGJEn6EueJ7yduaM3hGJpc9CdtVnj
         xFIBTfA8wRAUyIPekFhdsysHvG9EKk8wX2kuvOIu+8pXBkZj6JnS151HHiDCicUxLdZY
         9pjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772702048; x=1773306848;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3GP92JxJ5XdTy95M9wMZ60Kmbd0bBaggFoNOnUj6RJs=;
        b=YnumYBlsNSnlKbLDxInoTWvbSqlgyU2P2YHamDFbV7nJBTn4GPJMYLO/8lG6lnAelj
         G7NZXdoUZHLo2A87EB9DzEgyGoQ3/FDcXlCPhcurgVRXcj731nufCdz3ggofAQEy87dL
         83BQMf4gaeBc2ibIBoH8z/KZ7rvCTo0wW/MYzoa6l3oy9JRQVVYsN5QbSVI3znRbC97N
         dM7rJfENsBr2kC+2ijfdTjsJjVH/zpG5ASxcr1U4SiJbxoZO+9cwgvpncnYj73hKRddA
         N7rq6bp5vZ49k6mUauclxMP4IXAS5JWybf3apKrmY6FKKbFeboEk13GmZ8j2AjueJgWH
         vmhA==
X-Forwarded-Encrypted: i=1; AJvYcCWkP9crCqQXYvSLWPqPGfMWUI5whLokmTV1xkHkS3rlD7/4pxzdupbVqE7x8GEsiKYxiKLQMslxV1E=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywp6gTIC/R5XbTziXr73cmFPYC49NIB+LiwV6EeU4We22ocPrtS
	SJbEcba7NPcltTjL7jQ9Vn5J4bY2Wb1wg6RmLucjtUNikuxfO+ra8GUKTr9mdcUa0LgBSbeSAkk
	pZLXg03l9b8eV4UZqlyFxj8fGPAaPMt2KeaGd/Lw1/E6Z5Ma3jN+g7YF3ZPl60wb4bwd7
X-Gm-Gg: ATEYQzwT5TPaUAa/oiAt6FCD/32acNk4RdS9DJ5igQWxH3rRZp9KkBawvla5KsoRQdc
	eQimQjBvV9tk21fFKy4NeCz16jJoObvzUU45LLbHBlTEBLhAlWFymUKST8OkxKI9mFyo+olb2vt
	77l2D0reU7ujL5o9JXjW4eb5JFz5Uj79KpKAZPFg8oYpZluSJFHHfsrh+FtOoUBm8jdg+q1KuxR
	LsfMVJRGynupwuxAD132CJpPLlwqNPcEaBn+nMwh7AqgIcgy5upfQOFMARc3NoATG4ofM9hZDev
	n0VWaz7LNng97KpeJeqqZ/y0kLWn1Wb03de9V0TAGhSG7Kk3fcqHI5OgJLJQTkV+R3Qqkz9AUom
	fZ7je77F6O1lslHvh9nVuC61c94O14mRN6eQev+e2A4nUqmEJDHweOKuFAjpSPyU17Suv3iJQdU
	6KP0M=
X-Received: by 2002:a05:620a:3952:b0:8c6:ca3d:4e0a with SMTP id af79cd13be357-8cd5af0c89bmr485576985a.3.1772702048548;
        Thu, 05 Mar 2026 01:14:08 -0800 (PST)
X-Received: by 2002:a05:620a:3952:b0:8c6:ca3d:4e0a with SMTP id af79cd13be357-8cd5af0c89bmr485574085a.3.1772702048116;
        Thu, 05 Mar 2026 01:14:08 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b94172ca2dfsm14401566b.36.2026.03.05.01.14.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2026 01:14:07 -0800 (PST)
Message-ID: <42a9dd4d-eb96-42c0-b836-dcd7cb9405ff@oss.qualcomm.com>
Date: Thu, 5 Mar 2026 10:14:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/5] phy: qcom: qmp-pcie: Add PCIe Gen5 8-lane bifurcation
 support for Glymur
To: Qiang Yu <qiang.yu@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260304-glymur_gen5x8_phy-v1-0-849e9a72e125@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260304-glymur_gen5x8_phy-v1-0-849e9a72e125@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=I5Johdgg c=1 sm=1 tr=0 ts=69a94961 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=MH3fQNhLqH5gLyV0EUgA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: Rr8FKM-hLOCFI07JQKA0qj61Evutu4RB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDA3MyBTYWx0ZWRfXz88TglihS7Ng
 K7UrFUahLaHlgkvSv7crkcHkWma97BJT0EMf6BEgjjGFxfn7ny/8mUpoUYoKFVsMGHgXmMpledk
 3FfzZ4J3/Cl6usw262BjThNgOE6QC5CDmca6biHEyDES8LECdv5MuYs5bmSgtJp8Od+YR+0jtWx
 BqOIQbn0AwQvcnsyoZTp9UNGe3w9QvLuchuNjR6WoCUMMFG50XaqjuNuxftFLO/pybfHEiI840J
 Ib5Ccxs6VJZOqkE5TBFFTkFsTF+qN+ksQVNakgrhrfZ3mSTjh4keoPLvYHBLfrC+Cj8Z1zlQcoI
 FKDJBgSKos2kmYZ8VUTTIfPfLd9gQoIyZ54k/foazLDjT6UZs3zMWNo4ynVho+tE5EMIQbMAbqg
 yTIu4EtBUXEFXZlJfSIJPmYnUfJb7tGFv7rhDZbvYy9m3MdyZ0y2Loa7VJQLaK4AKjAz3UyY7MW
 jWJKJrIHXEfdrvK9STA==
X-Proofpoint-GUID: Rr8FKM-hLOCFI07JQKA0qj61Evutu4RB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_02,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 bulkscore=0 malwarescore=0 suspectscore=0
 adultscore=0 clxscore=1015 impostorscore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_011410_314982_1718556B 
X-CRM114-Status: GOOD (  12.44  )
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

On 3/4/26 9:21 AM, Qiang Yu wrote:
> This patch series adds support for PCIe Gen5 8-lane bifurcation mode on
> the Glymur SoC's third PCIe controller. In this configuration, pcie3a PHY
> acts as leader and pcie3b PHY as follower to form a single 8-lane PCIe
> Gen5 interface.
> 
> To support 8-lanes mode, this patch series add multiple power domain and
> multi nocsr reset infrastructure as the hardware programming guide
> specifies a strict initialization sequence for bifurcation mode that
> requires coordinated multi-PHY resource management:
> 
> 1. Turn on both pcie3a_phy_gdsc and pcie3b_phy_gdsc power domains
> 2. Assert both pcie3a and pcie3b nocsr resets, then deassert them together
> 3. Enable all pcie3a PHY clocks and pcie3b PHY aux clock (bifur_aux)
> 4. Poll for PHY ready status

I think we never concluded the discussion where I suggested the
bifurcated PHY may be better expressed as a single node with
#phy-cells = <1>, removing the need for duplicated resource references

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
