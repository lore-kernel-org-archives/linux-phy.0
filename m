Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81978C98324
	for <linux-phy@archiver.kernel.org>; Sun, 27 Sep 2026 08:40:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DeiOd8DShrluKLAv+qwh2Y5xBmctAWuucFQZj1QFqUg=; b=OJsVcnLDXannOW
	KB8oBj4d09OhuIZdLuB/9xOzBWcHUGmjZ6asWYKSamxTeGpuuyDvic3lOs17We3+NddsRUhH18x+J
	Q9o8QqsUKgnSsoybO6i4FCIr9HQbxw4D+91IZnU93Ppq4ZNAyx6h73ZfqtFtDzUxzmvclEfP1QR3P
	OoRtiFiKX9QM38k6CUENHwMLxPTgMhw+2+tt1UE7M+FmfQTUZt6YHJyYG7eXG5KysgXn+zeaIWc1X
	1oH8yCnihB3t/JEpVNntEb+EDrqZjfkegS/Nhq6lGqIU3+zSzxyaLczzN309VJ9QXYYN8AmEBDDEg
	Xql6uRs/sGnAvwur5UXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAkR8-0000000G9iO-3q2l;
	Sun, 27 Sep 2026 08:40:42 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAkR6-0000000G9hz-1WYK
	for linux-phy@lists.infradead.org;
	Sun, 27 Sep 2026 08:40:41 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68QGxWYR3730408
	for <linux-phy@lists.infradead.org>; Sun, 27 Sep 2026 08:40:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6XqMK/ERmVKwK7Drj00ei20mLMHsujEDPrurnafjbjA=; b=aEgYD23veb6enSsJ
	Uf2ZFzLb39vz6dtSjbphEotJ+nZLaktoxTICwM28dXDXY9MAQiTiGuFiVB0/p62+
	JLq+hZ8MnLOPZ9qViGTOBiOi4nk7obS6KVdzxUJ8+O3aDk6n0IlF4LftnbpuJSHS
	FH9UFm+Oxj1Lo3q3HH+abTgJg3nj7lVNHkluv3J+2VnQFvIL+Ztd4stXoM+rbcJN
	bDBjwypkAd1uInB5aAB4NQ5itEcc+gRqYmB/cImzJGRW8qMXpy7YwHIJeBmktH39
	bDWvVzQEJem49K8I8tHm4cBMgw0W2pj+rbG5Z4XpxqJiVXmKwp9oJP/Wm/IzWlJ5
	6vquuQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gx6e82j8t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 27 Sep 2026 08:40:38 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-93c5c205127so151485185a.2
        for <linux-phy@lists.infradead.org>; Sun, 27 Sep 2026 01:40:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790498438; x=1791103238; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=6XqMK/ERmVKwK7Drj00ei20mLMHsujEDPrurnafjbjA=;
        b=K+BB4hzZo7lb2iWF2qtoutKobMgSL+VElqgvO6poX9nAbay5+7a825/siNO8oNVqCl
         VHfIybr9m4TeqUE1QJNd6uK23jyOAkuMsU71JSqzLSLZJgysLTBkqMus86smVEHvSIR8
         PO66d9pvi4vnTDzEwVGW8zXDRRAAKrAkY+ym/kFySl4irbBbHx2b0WOoD7riTz33CH4p
         R/RcZG+ci5eJkkdMmcV9uK/x26zybJqwsz0bsN96FOK8aE51R2mgGMoO/XnVivT8PJur
         RXK28Q76X4XhCTvSlMlWTrJOxsBxm3KZoOMrrAoa78Y8CuhCoXylec+UdYL3Oeq758Fz
         7xaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790498438; x=1791103238;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6XqMK/ERmVKwK7Drj00ei20mLMHsujEDPrurnafjbjA=;
        b=SfHD1KsdAzKN+cAJu8b8XqVWYSXCwLl+VE6Yr24nvQm4WEnbZufXCatRU3TY6OlYUe
         e+Vpm5AFdetvqC7vlVc75wcF9Q/O4OLxjWl653jLhGHVbIiaZFxJ1ewTJN0+3Wvh7Ore
         nxpgZ4JC/PBZyjOJV/ImnQttA0hbX3KeIKL5n1AWecOeNSAUWXWuNORlN26jBsSDzQ+h
         Z9uEqhgim3Bj1VbTvoJAxA9ZYHIrZmcq9trKuBdxK7aI+KGGIibSyakP7FOraD8VtqX0
         Xrb1D8CnmednR3RwcQyL4SRfe4tr2zS54BBdvXn1jfu5A2Q/X7ACXLedV4tU8+5xNE6C
         /Jog==
X-Forwarded-Encrypted: i=1; AKwUvByg286g4XOJJQ7P3J/JeMLqKXkFDfgobOXwV2Wqy5ZnQ4OG2NWjAfYS8vJgnCIOpjO3Vy+c4stMo78=@lists.infradead.org
X-Gm-Message-State: AFuF++lSWnU9MtNMxwmCKMPkeOrBvgdGHh6yc1kR8eaDTkDdxa/r9YC3
	cIPCoUxdaPO3QTWVjlqttLyc24xc0e9d4pIZ3cWk25OHXeywanYkanIDVZEW/pPQmaqBI0oERmr
	blybT88tBk7d0I8lc72vmbBqaU7AoFd0hmDCjNPA7s1UT7A9/b1gVezrh0GPyoO5jW6TBPp5dIV
	pU
X-Gm-Gg: AYBFou0/D8CTtqgbha03tQRkkhwW5hsHi7XMHKz2d2odUiMTaTyJzkIviFJtGKFWT3N
	bzQL7+eToHC8LJPqX3i15KhsW9/4bt5zlzukCynPGmt/5No1d7jYcq+5OTnngpDnKZXhCc6qZVu
	GigCfnid1LF3VAcTd6YgkYLoQwzoZX4kjdfEHd6RT7qM9HZlFeMUnamJ5V6mKaeMHa2+JN9VBqd
	kgfX4eKTOZ4cY9mepJcryCrmweQn+Fsx3dkCuxsKJV3MtJ+UNAWWDYNBmEZx2iF6z2u2WoO60ig
	QBw5UkKckhqyr2f3K5EvFijTun4jgDFslu9u92jIO2fEYtAfyYfOClnAUVb/izNYrX1ZrvJqxxP
	eR1+G81nuSBP4Hpy+7DalNcZkDO/00XESWVmfbDlL+PBnzoO5stlmHhJDgWe5c1BqCOncUe2QVP
	bMXg+mdf7sC2GTffSF5ZcX8Jd3BLd2AyXup5wTjUS9LqVNEBI850IJ0bpdeezbn7YGpA==
X-Received: by 2002:a05:620a:7010:b0:939:f522:b2f7 with SMTP id af79cd13be357-93c43cd31b9mr1423863085a.33.1790498438215;
        Sun, 27 Sep 2026 01:40:38 -0700 (PDT)
X-Received: by 2002:a05:620a:7010:b0:939:f522:b2f7 with SMTP id af79cd13be357-93c43cd31b9mr1423859585a.33.1790498437693;
        Sun, 27 Sep 2026 01:40:37 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec? (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl. [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6aae5dd8badsm2910285a12.22.2026.09.27.01.40.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Sep 2026 01:40:35 -0700 (PDT)
Message-ID: <105d1f73-5334-4ae1-8267-1927f8691a06@oss.qualcomm.com>
Date: Sun, 27 Sep 2026 10:40:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: johannes.goede@oss.qualcomm.com
Subject: Re: [PATCH v20 5/6] media: qcom: camss: Add support for PHY API
 devices
To: Liviu Nicoara <lnicoara@thinkoid.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Mauro Carvalho Chehab
 <mchehab@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bryan O'Donoghue <bod@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Felipe Balbi <balbi@ti.com>, Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, linux-phy@lists.infradead.org,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Oleg Keri <okerixx@gmail.com>
References: <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-5-dc244e124e71@linaro.org>
 <20260925164054.25831-1-lnicoara@thinkoid.org>
Content-Language: en-US, nl
In-Reply-To: <20260925164054.25831-1-lnicoara@thinkoid.org>
X-Proofpoint-GUID: EI2-2Oyy_ZFmkl3uWHlg39lT8DQ-TSKk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTI3MDAzNCBTYWx0ZWRfXxYyxs/FCxwEn
 aDxN8WOxvcit/WGAsLW8KV9qdXLbsz7s34mclJ5lK2Mfiqa4/WAXdWKm/8umUTqh9D8e7/SzsqD
 +abPbHte0kqvNKkwq7h51nWZ14OYmGTq5IrAHKhZLZUErzofeiu7bnVYwYYK0vQxPnASYMyN9MY
 h4xWdw1A0zNoV28E4JRtu1KJM509GsN9poig/5PbUPIy4VRIUxdvKwTPUSoj5ZRyoD00N+QA2Xj
 7WDBRJuvisoRHcRM8+JtatsdUlHMcJGcBet8/463Nl/s84iIppTaWnvv6bAjF16SRthhMy0pOtD
 IRT081NaL1UaE31kH/UuX5qTWHugekImsYmlpjQSIWkOfnFu8oIu09ZXgb4uPw6aJGQJiQ0uswk
 HFU1q9vhAGxOHBGzuD6x1oqWtRJOiapZzqvWtmA2WBxdZDXIk8MCx1POOCZtDbQTwv7+AMUl8RG
 ogWE9NgqIB/m+uKC5aQ==
X-Proofpoint-ORIG-GUID: EI2-2Oyy_ZFmkl3uWHlg39lT8DQ-TSKk
X-Authority-Analysis: v=2.4 cv=aIFlOr9m c=1 sm=1 tr=0 ts=6ab8d687 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=NEAV23lmAAAA:8
 a=KOsBq0R2AAAA:8 a=Nv_Mk3N-tBtoCUosGXcA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=p7IlednmDx7li90OXeev:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTI3MDAzNCBTYWx0ZWRfXyYkXEc02UiLK
 YYwhdUFeuw5KDPjBIgfy6ergvtNGCrIKpJ4PmqpD1vgPa3lkkfyXv2JRgfv/mA9kGfJ8euMGuJ4
 dXwPac8bofCQI0YZdS3xT1tU2WCYxbU=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-26_05,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 suspectscore=0 adultscore=0 priorityscore=1501
 clxscore=1015 malwarescore=0 spamscore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609270034
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260927_014040_531149_68ADF070 
X-CRM114-Status: GOOD (  15.45  )
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

Hi,

On 25-Sep-26 18:40, Liviu Nicoara wrote:
> On Fri, 18 Sep 2026 14:56:40 +0100, Bryan O'Donoghue wrote:
>> In the first instance the code will try to use the new PHY interface. If no
>> PHYs are present in the DT then the legacy method will be attempted.
> 
> Tested on a Dell XPS 13 9345 (X1E80100, OV02C10 on CSIPHY4, two
> lanes), with this series, the CSI2 PHY driver v18 and patches 1-4 of
> the x1e camera DT v7, on 7.2.6, plus a board DT for the 9345 (to be
> posted). CAMSS picks up CSIPHY4 through the PHY API, and the sensor
> streams at 30 fps through libcamera's software ISP and into a browser.
> 
> Tested-by: Liviu Nicoara <lnicoara@thinkoid.org> # Dell XPS 13 9345

Thank you for testing.

It would be great if you can post your DT bits for this upstream soon,
then we can add them to:

https://github.com/linux-msm/laptops-kernel/commits/qcom-laptops/

and more people can test.

Regards,

Hans



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
