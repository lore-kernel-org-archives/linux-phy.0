Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8C1EC53200
	for <linux-phy@archiver.kernel.org>; Wed, 29 Jul 2026 15:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bni9iw+70Ol9+f1RZ/3h2sopZdwLG0qH635/v+Qz9ws=; b=hdCcdqt5OShdpT
	m3obNVUReOTeV1nzPkkOomD+iU2NDRFK2utX4YWIwvZxo+wAuKvshRalxJpxsYoGjdSRwZbABDdOX
	r5SOwoqLsyHejsij1WEvmTxjcz3YieOoLvKTk/FAXDWrSUJ6/EMeBLIX6pEQUaiJqShZZEdtWT1sc
	OfJerOFrwh5dMBU1eqx4mkkVQcAl58T25FZ0e9OgixsnbQB42XwPoY2ivrjDCN8Yc0qCCS6ahaweX
	4WTAYBIw6aX20ihtcj5nA4fw2kB+bJT9OY0wWmnJ7ioty2Ns4vi/yRPS9My+gZvR86LUzNFS471As
	eziiYos8IK2iy2UHeVng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp6O6-00000008R0J-1CBH;
	Wed, 29 Jul 2026 15:40:06 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp6O4-00000008Qzf-1DZA
	for linux-phy@lists.infradead.org;
	Wed, 29 Jul 2026 15:40:05 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66TF2J2g2356512
	for <linux-phy@lists.infradead.org>; Wed, 29 Jul 2026 15:40:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=9SBsJFrqume2aqb0uRjijPZX
	7OxNXfNL3XcOWC66BLQ=; b=CKhwwqCDKZI236HuzGNeh9kZ3G2DqnIE53P3GT13
	NC5kg0rUZr+Qt0SvyewEXRFLCJ6VMwws6573dGRCSJFrQNBB+TwyH9gAbZ9GftfI
	koK9699slV4Vxqmb7xCnefpWrQnI+5h89tMPuQl56AK6rOYYLhaXsP/xNE9nUYWU
	fyjUXryLbV8S+5XMHv8+9jDarnQRzGQptXItG4YYqd97KBM0f2FP7bV42FQJq3KF
	cfTCtha5TqbVwo3JTUhh0mS3vTGmbqIk/b38T7xX3QvErXms0GmVs5laam1tf9Dw
	4IV+i9T9un7j0WDkLbAVwHDCujKZ7j3tA6hF2TaypPr/7w==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fqhe991ym-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 29 Jul 2026 15:40:03 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-51c1d30035dso9778391cf.2
        for <linux-phy@lists.infradead.org>; Wed, 29 Jul 2026 08:40:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785339602; x=1785944402; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=9SBsJFrqume2aqb0uRjijPZX7OxNXfNL3XcOWC66BLQ=;
        b=Fcj/EGkK26EUIQQj4AVWBWgVX2+W1GLm3SpeHd8D1icjCLWiaNsugSXvyDnLTY5+rT
         1zhNG2onvwsp0BFZpmowZFyBz8PBjiBBjfl1rDJwOf7tpHLWYHp7B1vuvX7zqkx0yjNH
         dpYP+hAMtZHxhjzO/WVEUtKnx689JOAW+4Jn6vLjWcIMA59CHHhF66Ip3rYD2GmsN0UA
         8aeOBLaMnIa6Yk3bwIZvFJHi4lkH2+/xFhRILR7zxrEtbcLQZjCa5Sv+bfXWcRAzUL3K
         yhczrbXe2WdoPieXA6xyhg8hGGrseEg9c0oCTJd9y4AVPycu43KKTLCim0HmX98eYyOp
         Lgzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785339602; x=1785944402;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=9SBsJFrqume2aqb0uRjijPZX7OxNXfNL3XcOWC66BLQ=;
        b=nQ389DF3yYnRgkfUrlggJezvUda1fjW5k/n87hXYUaBeu3aKvULQ5TyURxXk1Fik2x
         ro9Zwvixz/FGTAV30DdXcDNfgAQb5k6wubVPhJCvUDaVoCyX6BFLEt1rzqGzbQF1khfy
         Tzi69rG2g75nrqhM1XhtfEQv/1I1vSDvB3vwTChOpeeWhOv5+rWY/KOeMXxJbRd4TVDG
         0Q7HfYPsFCyRQ9v8yNP47kahisMltpYIg45thMZlNkb9ZCofSA2k4Tgkv6wEjRQO6lVA
         r7InIgNkOek4lJFQzCUmKr+3JtuV2FJe6r+/rXLoGWSFkJzlj151eXRQJuZx5P0YhpuJ
         QYhw==
X-Forwarded-Encrypted: i=1; AHgh+RqEaUScf0LKrjJi9FujE7SzQg1UYcBabl7YjJ9uBXwqjyYAS9WS1HG+AQ+piri3Jb8ZV0giZwkz8U0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy1s7MDkEg2VQckCbPEVqJupWDcgxfwuSizQR1KVTZUt+MLMiQ3
	MDEPBirYiX1aQuM5uOuIHT7XQH7LFiU8ov63wXsI73BYIjQihI9A8Ms+X/Ha9FqibgEUd2IMhBF
	C8YLEV1tXWIMfycFR2wJTbHBmAIFL6PCwJvj4d2E/7mXsus844ZaCWi0AzKxF7765iQ4U
X-Gm-Gg: AR+sD1180zA6amAkC6aSs5pEq5skFrEiprY38cXz3DPsYAkSG/M5jFhaKeO4zhiewMe
	m9Bq7PfOnDtTKAv2TNKRg6Y108cqrIi808SMVNyIVZ1k7XXA2odzRrn4NtjFgLrQxoS1RUAKUUu
	zKKrfAhBIDESS/ezu21As38Sx/gOWHzMm4uHLnyAKqpY7AWbSWEOEEcRzxp0UIXUSzynlKmRFhL
	cL/lI8nGqgpPpkanaACkE+ZCvog9OTccZdk4XWhTjrAeAHZQ35rBC6FN4xkDm0T8eBmIE6TSDa+
	eGGUDsBnOQJQPUDTYPZgYG8jEoq5DFu1YG+ukEAyoisq36lSLfeK7m+Msc/4NMbrXVK/eqt2KJ0
	yulmnFYmnzxukeAQ=
X-Received: by 2002:a05:622a:180a:b0:51c:1bb9:137f with SMTP id d75a77b69052e-529d6fea697mr63642591cf.24.1785339602221;
        Wed, 29 Jul 2026 08:40:02 -0700 (PDT)
X-Received: by 2002:a05:622a:180a:b0:51c:1bb9:137f with SMTP id d75a77b69052e-529d6fea697mr63641991cf.24.1785339601365;
        Wed, 29 Jul 2026 08:40:01 -0700 (PDT)
Received: from oss.qualcomm.com ([86.121.163.114])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-496c45c297dsm157031645e9.7.2026.07.29.08.39.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jul 2026 08:40:00 -0700 (PDT)
Date: Wed, 29 Jul 2026 18:39:58 +0300
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, usb4-upstream@oss.qualcomm.com,
        Raghavendra Thoorpu <rthoorpu@qti.qualcomm.com>,
        Mika Westerberg <westeri@kernel.org>, Sven Peter <sven@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v2 4/5] phy: qualcomm: qmp-combo: Add USB4/TBT3
 configuration data for Hamoa
Message-ID: <vznsfyt3pxlz5p656r7yeuglky7qlquv5yl2r36aby6jwidluy@b2xujn7o5i33>
References: <20260728-topic-usb4phy-v2-0-5d9dd5149ec7@oss.qualcomm.com>
 <20260728-topic-usb4phy-v2-4-5d9dd5149ec7@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260728-topic-usb4phy-v2-4-5d9dd5149ec7@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzI5MDEyNSBTYWx0ZWRfXxQLyVPNeyX6M
 QWOQjDX5JTS6LMUkOestMz4FOfXn9u4rHcY/A4izScvghswM1UEucSvSf/Fenl9MT1Kx5Vl67G9
 OsXnGywUCgBCWfcrA5CoJA+k8RZaUJGDhqNUOjxKmJFJOhn7JfQ3SjEx4CRSf9nUDOwgztu1J4c
 EYBQRtL5ghE7vk/sbmWdONanFyFzF1ZNlugLfzMylbHqgdY43Y5DFRxt/L59Jl2BlDr/KlS1kCA
 BwYSnS62DbB38QOHhk/KMwBLRvs7ei7Limh5Pd38PzRMh4qGI6B5FQslvtYy88S1hVQZ6uusS+h
 dQOC4ecK8v44Bcs+H02Mz9LJOGWfOJNA9VaoH/402HwjMnLnfqJjG973bMRQpbhTsKSSVdKNdwi
 YNGVksaPb5h+nNtC9LRHcMOEbdyTB0jenbP75JwjEWCdHJCKFFuwhQ1u43I4bq32uYALhhNyhVp
 LtUJQodNECCqzQ1+C9g==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzI5MDEyNSBTYWx0ZWRfXwf5xPyoi82Bn
 i8dBkbsPF96WNFb3jvd5KAdGDZNuRCnrY8WZn4bY8vWUSmFh9UR1teJgnt+vnbOMEvY8oAXI++J
 op8delSyrrkwOrz3Emnx14gWbP04M7w=
X-Proofpoint-ORIG-GUID: Qc-0042XZkn7j9VkDr1_MqIz2okM0NN2
X-Proofpoint-GUID: Qc-0042XZkn7j9VkDr1_MqIz2okM0NN2
X-Authority-Analysis: v=2.4 cv=EsriaycA c=1 sm=1 tr=0 ts=6a6a1ed3 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=6dw9+iwJWV8PcCi9M4lOBg==:17
 a=kj9zAlcOel0A:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=UsAkPbjk_MlyJrJ9_ZwA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-29_06,2026-07-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 bulkscore=0 malwarescore=0 adultscore=0 priorityscore=1501
 spamscore=0 lowpriorityscore=0 impostorscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607290125
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_084004_340834_B7FC76AF 
X-CRM114-Status: GOOD (  10.72  )
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

On 26-07-28 12:10:15, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Add the offsets and configuration tables to support USB4 and
> Thunderbolt 3 operation on the USB4-capable PHYs found on Hamoa chips.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
