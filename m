Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9634CA601C
	for <linux-phy@archiver.kernel.org>; Fri,  9 Oct 2026 10:29:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=he7awtBNxZKW3sD8zQiPkL6sglUOyxxWCg7Lz4xjpG0=; b=GxlV0DEd0mcfQr
	SyPXtk5uWPBcvEiegJf8iWQB5/sO1zsLwmxYz+QiT/6hKpD0raGevHFqKcpIyZSYY8Ww2TRU0xzpS
	e8/X4RFkIK1d3azUZnJhHwMCbQNx+Scrg2WbL7BEmxMEGRNJZsqSasgT+/gW/ilPEjKGVKT5bzJDB
	9iQskxCkCyo9UEeztwBYPpsdCiQt1wczzLkfs0IN+xHI+yw1ztdHrAa339wRF+tApgdnPWLPx8GJZ
	9uEd1zWJEJqI3V2uttLaTnwTKhgdfKKWwqATRi59GKuBHOqrPMICX14AWLhNB0hFmufhYOWh/gq0H
	6+Ir/1zVY3FdKkQRqNiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF7qd-0000000640B-2CU7;
	Fri, 09 Oct 2026 10:29:07 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF7qb-000000063z2-1gW4
	for linux-phy@lists.infradead.org;
	Fri, 09 Oct 2026 10:29:06 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6998KkiZ1253043
	for <linux-phy@lists.infradead.org>; Fri, 9 Oct 2026 10:29:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HyC5W/PoIqu6z550EClqx3QgxQlgKjeDqKv8+Dt31DE=; b=ekIO43Xu9VoJb1q0
	nMjWZ7vnjEKk6cnOJ8GBh37vu/nVLK9/maUlsUXgPxzn4Oswkg9jqlcNiZ1pF2Qx
	fAo1MXm4NyMMNnTA+BBf62GZOQyykkn0ScspVTFckGMJmkpc9m9zDhFQ0Hj+JW2B
	utt21eeJ7aF3rq17tEUqcWDAmHaPYF5Ofl+aXa1vJ+9S47nVRHxZm8mxsGburaKz
	LLpAdCsYkGlVphpzoIqf94WQ9t18GzWqU0wrTR4XXgrDtMqOyrzfps0JPykBjtG9
	R9TwECnI7c4PsxSiKq/Guwa/6pz6fPyAMyHJnWyYP6GnBelddoccs1IHR4K/20rx
	lLnmrw==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h6baj4ae5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 Oct 2026 10:29:04 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-3510d0baf63so13355563eec.1
        for <linux-phy@lists.infradead.org>; Fri, 09 Oct 2026 03:29:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791541744; x=1792146544; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=HyC5W/PoIqu6z550EClqx3QgxQlgKjeDqKv8+Dt31DE=;
        b=X8LUm8YMojnpE1wCUCIwHSI0Ok4mjn6jVkqb2waAx/9MuK/BgdfgR2vvyo7gHtT+co
         o3YjRAy3sOzT29yLdBfJT4WFiH3OATd9mm5f7SVZ3iv5eq+gy0cYVIJQpxvWYLEYqp0S
         ZswYget4T8IxPXjGB1pSzaCwk2iPWKLz+RA4B/jL798spcir3bVX4bgF84r3juCI+rN3
         xuvSeomce4UUukldLOq0Nv+S5P3OxxCH/v8r1udQeyG3KaFxAlppC4VKh4ThoYK9ino3
         6BynA9yO7ANar/xdHXZ25rhC7cGzV6NxOB8GzuPRz3jBzzpjKrB/LP5+A8eqNfvZG06S
         rY4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791541744; x=1792146544;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=HyC5W/PoIqu6z550EClqx3QgxQlgKjeDqKv8+Dt31DE=;
        b=KOPqPP/DrsMreGf9PjvUIY1GdZZmYHxRcAo3LCo3XF5ELrjcYu5v8a8KTJkt/oU5SI
         51EUp1FgiOL5fJCzMU1uwXWYaQ84s7RcJcbKuPF+TrCOofDA8CMbAkeJgWVvc3ZY8BII
         7fEvc3RyrtviOgIWP9I+bFcrCX0uXYUWJjV3O8U0bNP8svozpBEFskP5Npew9RlfsU2c
         R3yJrHJONeuWbEs71nt7mYylPpbuGr3J1+6PUCoRJSk+tRPYVnKqHFE2xyMJO4gOYMKi
         fuiQnybk/ZCPl5chMcQe8N0jqw91RkMcdvyS6XXZEgoTtDaTpN6AI6lwAVlq6U7cNcyF
         Q5Bg==
X-Forwarded-Encrypted: i=1; AKwUvBxbPe3t5z9eYyZKERToMTiAoQYNUUL5VaWpNr5qSZp3a+iU+UPGYsaIaCaD6QaJsE0Tk/1bnofeLUM=@lists.infradead.org
X-Gm-Message-State: AFuF++nW0f1agInP3+xxa6f+ulvZ1SmA0zJ81mYRQD5mJnSDEOMnxazi
	hN2EZqgM+INJeYmlcAm/CHzKMleRyXkalWnHy3+AicsAHFXZ9kif4W75LV3zGlcS3ks3w+TGRca
	z2e92yfWRo50x2fUFTzFQeYVhHjeobY1EI/MkEhB/azRf3iRvs0x/cWxe632XUX+RkLR6
X-Gm-Gg: AYBFou1TubkIpC9qHm3BmNnRE/aPNwgyBsFX76pVwgJrH6eP6phsd6P8DotbuOe/ySq
	DNEylGpKPuuZ36BJQ0sO6YdWT+vRCrNvAxsBlp7kKhRYSM68SqG3Sd7IyY5EvbnNLXtUcrXE4J6
	DsuFdJZeIY/pw/fZvGTIsdWOgPSaqjv0DXMTa80W0ofju7eNJYtBMx7sETmWve0ik02Qb6xzNII
	+it/cu+LVbdlo8WHKL4UyHCGskjFfR1GqtUBzwZK2Txxv9GcPI4EH/8BpMYGekkpE3Sjsn5zG2B
	2lC6Gvximj75BEVdyPI7tU/rcKqDif/u929wu55fBbakg5UQ/n2bzOdLU2Jnc3urFR5AVVWW8BY
	uhfN5owfXTFFlZe7cXZhu+OYhyhgBwwjaiqNXXtBo/Q==
X-Received: by 2002:a05:7301:c015:b0:355:b9a5:c9c0 with SMTP id 5a478bee46e88-355b9a5ca6amr298339eec.1.1791541744073;
        Fri, 09 Oct 2026 03:29:04 -0700 (PDT)
X-Received: by 2002:a05:7301:c015:b0:355:b9a5:c9c0 with SMTP id 5a478bee46e88-355b9a5ca6amr298305eec.1.1791541743570;
        Fri, 09 Oct 2026 03:29:03 -0700 (PDT)
Received: from [10.217.216.105] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3537cacb61asm6406058eec.21.2026.10.09.03.28.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2026 03:29:02 -0700 (PDT)
Message-ID: <b46051e5-6ae5-4e3f-8cab-4f7199b9e880@oss.qualcomm.com>
Date: Fri, 9 Oct 2026 15:58:54 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/5] scsi: ufs: qcom: dt-bindings: Document Glymur UFS
 controller
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@sandisk.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        gopikrishna.garmidi@oss.qualcomm.com, jagadeesh.kona@oss.qualcomm.com,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        nitin.rawat@oss.qualcomm.com, sibi.sankar@oss.qualcomm.com,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        "Martin K. Petersen" <mkp@kernel.org>
References: <20261007-glymur_ufs_qcb_enablement-v3-0-84cf4f861415@oss.qualcomm.com>
 <20261007-glymur_ufs_qcb_enablement-v3-2-84cf4f861415@oss.qualcomm.com>
 <c2b6taguiyyeteizf5ohdsvmeyaybbs5pm5cuv5vqkklswmxv5@5ekurkmzdhjt>
Content-Language: en-US
From: Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>
In-Reply-To: <c2b6taguiyyeteizf5ohdsvmeyaybbs5pm5cuv5vqkklswmxv5@5ekurkmzdhjt>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA5MDA0MSBTYWx0ZWRfX2RxgZWhleDma
 CYMaoWPa2EpUEAvxwEalVVHkoieAZoEwuncFGEyMW0T79q85LM4QWkBWiEU2DndLLMRqktnUdba
 2BbxQNU+8B2JFEUHt8XnT0q7Y9V8SBcO+aaYctc36YvshkUfI6nioz67EfpG+PLPPmyPBLtfBqx
 Toko4OPxAB0sj7iQT4KZOkykP+ZOEUleCsDyzadxjYrwOWzUnDxnCbESCwJAmcrcgHcVi4hjLd/
 /RZMrhapW+U3c5dN1qZgYGrLNs901ejjmoUSYZU4s3P9+7BSPGrtX3pk7PwMLZ+hZW00HqtG2Pl
 6u+6UhlU/ZCCWjsVp970gLhowneB2+af00OKRcflhJQdH7xBdf6Z6JofMi5RytehBQd5ok2fl2R
 OFPSpSGziCja4+Pwe5uvMFs9M68slY5BSobet5avMLV/Hd7UJADnAMwYk2m0m/tPcxNNpbNtK3N
 pfFfwRe5JnSj5WiZ2xA==
X-Proofpoint-GUID: _IdHb5IQWGWoRhQUYOsfca4h7LEi8fmE
X-Authority-Analysis: v=2.4 cv=H/dOUOYi c=1 sm=1 tr=0 ts=6ac8c1f0 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=VwQbUJbxAAAA:8 a=_qIwb01vgd_s3mhA8LgA:9 a=QEXdDO2ut3YA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-ORIG-GUID: _IdHb5IQWGWoRhQUYOsfca4h7LEi8fmE
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA5MDA0MSBTYWx0ZWRfXzbPlvilnvLqL
 854FhbJ0to6VkiWQbbMhY+/CKtje6/X74+Q/V0NUH/dKXxJTvWB8pVlEt/stERVWHlNJlkjTK85
 72QFBVroKGUJVHBhAiPyTuVnsE9N7SM=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-09_03,2026-10-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 phishscore=0 bulkscore=0 suspectscore=0
 lowpriorityscore=0 priorityscore=1501 malwarescore=0 clxscore=1015
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610020000
 definitions=main-2610090041
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261009_032905_454969_0ABA192B 
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



On 10/7/2026 8:54 PM, Manivannan Sadhasivam wrote:
> On Wed, Oct 07, 2026 at 11:59:35AM +0530, Pradeep P V K wrote:
>> Document UFS Host Controller on Glymur SoC. Glymur UFSHC has a
>> multi-queue command (MCQ) register range in addition to the standard
>> one. So, both reg entries are required.
>>
>> Acked-by: Martin K. Petersen <mkp@kernel.org>
> 
> This was a mistake. You clubbed both UFS controller and PHY patches in a single
> series and the UFS maintainer ended up acking the patch assuming dependency
> instead of merging the patch.
> 
> Please send the PHY and controller patches separately.
> 
> - Mani
> 

Since all patches in the series have now received Reviewed-by and Acked-by tags and have dependencies on each other, 
splitting the series at this stage would require waiting for the bindings to be merged before the SoC and board DTSI
changes can be picked up. The series has been rebased on top of linux-next, so I do not expect any merge conflicts 
while picking up the patches. I will take care of splitting such dependent changes appropriately in future submissions.



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
