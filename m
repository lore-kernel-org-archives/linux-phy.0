Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FC1DC83F27
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jul 2025 11:17:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ynJ0gEGrr0APefVuNbE6sxkw61pbcakMwTJbONtA2o=; b=odh1FkfPG/kr0N
	ytSqWWn3gDTQbBafpegZo94emVBM0Fp0ul7pvkRzzVVaVZxfB+j1pI78Yr0rNg+JZ/mc097y0BEuW
	EmHVuX3svLx3DsZR1z6KcXGCyOfYgxTsCZSvdLu5RXYJv0vz57vTft7qlbQl+FqmD6mdpc7m8yJJe
	Au8+r/1vONW3MQUs5gUPp1bb4wlhvGDXp2vtNmXhz4F2OTglReUEElV+447bkqp+N2K3z4en/Ag20
	H/6akqXloZl1dcS+YpGVtBJUALQBy0USxILuAZu8QUbwa/q6o/lgKhbI+WWlOS/W8pbzpRXK0qHqk
	AyEvFjZoDCgAJJ7O/D8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueAzd-00000002GAY-0nci;
	Tue, 22 Jul 2025 11:17:09 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueAuk-00000002FXS-44My
	for linux-phy@lists.infradead.org;
	Tue, 22 Jul 2025 11:12:08 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56MB3eoE016286
	for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 11:12:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Lp9oCAfC0uqs28+yLNSlWvHOEvpNJYHHvb1kBs8yoFw=; b=kuDjK8lVrMQ29mM2
	NnvkBJtssHyZ940GjxnoRNMKZIaxrrUx8OXjNq0M/7BtxrF5bJvbBeYk6ggjByLo
	PwzeE6UzPYbeH2HjAjXIWWUlV2lGbdSN2XiTlUTL9IgR/r9Zn7QKGAkBaD9K5lyN
	RIKWxENkALQGIO+ipEuOmfCiHWx3pFg+M73KWyqTq/Rz26jIV2vpsG6lgUxrkti2
	Lh3UHvoSbhksgHnFKlfDBWl+tzn/5QD0hSvpBlrkZIXA2MLcqD25MBwTkjLj/obA
	SmTVTcuY9IMCN16lD/Tackv2Syvpf+s7q0WFRV6BqDaEkCr62XhpKPUTbzRoxzuf
	HnrRrQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48048s195c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 11:12:05 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ab61b91608so2674491cf.3
        for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 04:12:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753182725; x=1753787525;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Lp9oCAfC0uqs28+yLNSlWvHOEvpNJYHHvb1kBs8yoFw=;
        b=VEP8aV1qR38YvA0hcLtZ3BNHXpPu2zItR6eDxvL73VD80G6x6HISSMC04UlLI5hySi
         vhm0VItVdyPg+joMO5a2f5byT9oFoLTXx8GYod2eK28AMMRiiSNV2sDHIkxaz+cS9b5d
         Uvvy13ZxxgU6zB76si8EmFcFROl8fmabJ36TjF+1SuM0SwJ1vNRypM1uPASlwxLTlQx8
         rLSJS9rG7bJW+DWn4jz6C+APOhRZY9OGaiPsPGuUUoTALqeqGOQhRKSwN3XOlnA6IxlD
         UiQRETmiF6HrmiB8SHqMXLGIUIr57XK3eoTGIwoJLRKE1V2BfJhyP/Z5mcSsFyT2WEEv
         9d4A==
X-Forwarded-Encrypted: i=1; AJvYcCXeQvmp1caPIxT9y214x7ESM/jdUqVFKgBjHzfYjm9EEqB5rHfN2lmeqhAYZMppEdkrXmsTmApZzNc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwXsiSdj6QgJENFZhpI0JQC7a7CGYCXeWg6faLjgepAbQbtexT9
	DSEAf9ljnUEobwmOPu0gN1vU00EwG5qrIPBVCvwTwGeKBVmtsCdv2hda5zL4rQQAROX61YSYc+A
	gxR+96d2UM+pa++h1NQRJLosQdPbK4ObHBy5Lwp3eBalN3mRw2OgQp1MhnF4kwXCeIIwc
X-Gm-Gg: ASbGncvxWxkfOW+20cEqPjB1Uc2VcSAe2T5PH9KckEOQNtYzQOXjz96uCymbSb8uBsH
	4VjYWdsM7Kul4t4Sg3vD7tpyASAiWQuijEIoqN80dOQzd2GgQtuEMtNYJOrFyHXAwIUWL3W4D9k
	bT3kW/FLHmW6UeNLuK6Yul29MQyxdDnXOeCudxtgWEbc9O+uhyRDWvv2sceENN0mTH1N5Cw/qXK
	VRvu2eYPMXvtavtN9YPCogrhS7hVkOv0mf6qLw1cPthAX4Oxs6OJRUnxSFUCEkvOg2eTNOkLZtV
	GTexwquH/wS7Cr6Zlm1w4Ka5EjqydQegm44dzWpamGFKWd0iCKkL010YWP7+LKazmX21JkZMBvA
	uJz+1WnVk21do+LRmmsXg
X-Received: by 2002:a05:620a:4894:b0:7e3:2c3a:aac5 with SMTP id af79cd13be357-7e342b70ea4mr1315161985a.12.1753182724455;
        Tue, 22 Jul 2025 04:12:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGsVndy6GfF1/rbOfATVToveGOqPm5CxByBr7sl2oaOgD0x8vxoWl1Wqyb/DMzWWuenDTrgHg==
X-Received: by 2002:a05:620a:4894:b0:7e3:2c3a:aac5 with SMTP id af79cd13be357-7e342b70ea4mr1315159785a.12.1753182723749;
        Tue, 22 Jul 2025 04:12:03 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-612c8f36f96sm6863713a12.23.2025.07.22.04.12.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Jul 2025 04:12:02 -0700 (PDT)
Message-ID: <41dda9bd-12c8-485a-a6d0-69d040d724cd@oss.qualcomm.com>
Date: Tue, 22 Jul 2025 13:11:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/7] nvmem: qcom-spmi-sdam: Migrate to
 devm_spmi_subdevice_alloc_and_add()
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        sboyd@kernel.org
Cc: jic23@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com,
        andy@kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org,
        srini@kernel.org, vkoul@kernel.org, kishon@kernel.org, sre@kernel.org,
        krzysztof.kozlowski@linaro.org, u.kleine-koenig@baylibre.com,
        linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-pm@vger.kernel.org, kernel@collabora.com, wenst@chromium.org,
        casey.connolly@linaro.org
References: <20250722101317.76729-1-angelogioacchino.delregno@collabora.com>
 <20250722101317.76729-3-angelogioacchino.delregno@collabora.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250722101317.76729-3-angelogioacchino.delregno@collabora.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIyMDA5MSBTYWx0ZWRfX+yjLk9hJlX/x
 IxGU4cu8Zg8YFTeNyeTPCvjJBWh6ddltAND62sMQSrfO2plYuJzBluaqCjCv+w8HPq4kXxfeFey
 DZZ4vKtSwbhXzt1fJ18cPJmBJ/DlJkq11UWhkgi5tXwe30LdMkB8DEHwNOQcIBS1ZwHuwINyDJI
 J+owHA2G+L5cM+cqoo5E+y4oTjC+YJxsCdHRY5vPhSQgg1hPeLTdDaXxNOzwm1uvgd1M+nVot0z
 VGay3ib3dkToCWiUkDGIqMpVsOV+9P1cnVI3fVk8bKMuw1y8kf2GuoWimu6Oil2xcpN4Q8c4C6u
 FMSBb+VqFgN44PN5LOmnXGIe1IM1Qtouq7RfVLUD1nJvNYFx6jGT1xAXzmbDYikGQh3JjjWQiTW
 ma6eFzavIeQ1D3L+or2Lf55+RGGzyxrfjjwuihOubpoi0U3MAQD1Da6zW19peXu2tips0bC6
X-Proofpoint-ORIG-GUID: WZhGiQ5fgoce51_4d9fQKKALM2i6tKAa
X-Proofpoint-GUID: WZhGiQ5fgoce51_4d9fQKKALM2i6tKAa
X-Authority-Analysis: v=2.4 cv=OPUn3TaB c=1 sm=1 tr=0 ts=687f7205 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=QX4gbG5DAAAA:8 a=EUspDBNiAAAA:8
 a=Y_nGuXgBD960inqFf4MA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-22_02,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 mlxlogscore=797 lowpriorityscore=0 suspectscore=0
 spamscore=0 mlxscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507220091
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_041207_134644_51E54D86 
X-CRM114-Status: GOOD (  12.08  )
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

On 7/22/25 12:13 PM, AngeloGioacchino Del Regno wrote:
> Some Qualcomm PMICs integrate a SDAM device, internally located in
> a specific address range reachable through SPMI communication.
> 
> Instead of using the parent SPMI device (the main PMIC) as a kind
> of syscon in this driver, register a new SPMI sub-device for SDAM
> and initialize its own regmap with this sub-device's specific base
> address, retrieved from the devicetree.
> 
> This allows to stop manually adding the register base address to
> every R/W call in this driver, as this can be, and is now, handled
> by the regmap API instead.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
