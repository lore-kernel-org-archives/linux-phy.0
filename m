Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7AEFC3ABBC
	for <linux-phy@archiver.kernel.org>; Fri,  9 May 2025 12:49:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q65usgyEp2r0scuNDVxvlCPauTAnuPlqPGkKqtEOrCE=; b=JtZcjxGGfQl7Du
	9w6aeL0KUFMDRq1rG9CYnsO7tISIxPGMrL3rmw9/xu8l2iImAORc3sQfRQa32WQlsOZUgOrq6GFXp
	6KRoliEJn5XeAzgDHBjT8ALpnYXqeAAlBYtD6xKOYfVOpQs+EBug1WStlZihzx5RtMoO6v8lWzduh
	6HVtKpN82ifBRcw13c1B0SyT2o4weZNln5aUXN0U3QgnATZfwhLtNkbmCx853TwtPVH/Co4LhEkjs
	Js3bZpCPThUxZQo8rnfv7fISDZqBa/uOexxIpdQ3ImVxz/O97SZ3N35VTbjTO2RvIN5BVMxpR4iyL
	WcHOjyKvf4QfgL4rXRLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDNAU-00000003dpE-2LyE;
	Fri, 09 May 2025 12:49:34 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDMPO-00000003WIM-1Pqw
	for linux-phy@lists.infradead.org;
	Fri, 09 May 2025 12:00:55 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5493OCb1002336
	for <linux-phy@lists.infradead.org>; Fri, 9 May 2025 12:00:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uhmvCJtCideJcLgLP8CeF1xAYGZD1D5hleQo38GBvLk=; b=IUxxbiCG03PZNCJV
	YaI7VA8I79XU4D5JqXf9xXZR+JZvDEk4qrIOFgr953VYWX/7GkFjO3kLn2Kbgayw
	ufbdGPXSgXMATpkvqmB2jnqxwdXTpybUpNr5y8uqhYa+h+RZsIX/1WKOhyhGQz3M
	EVvLrgtUKsPtCZv6QZeAiK32h8JLR87RpVfobQjPce8euclRhJBBBVky6jfHQ3ST
	bx0ZYp73OzleD5jporkniOYUPlqEDWJMeBs0wsMW/XjDik5Au0J+3qcBKfVCB9gv
	LDUtHbHHX/tE3kYj1pimJtNSWLuhqW6h3n6JY9ikzOTSSJMjW9vCKXwXNUyhUKB7
	3oYkNA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46gnp5chqy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 May 2025 12:00:53 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6f54fbf3a6cso2862026d6.0
        for <linux-phy@lists.infradead.org>; Fri, 09 May 2025 05:00:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746792052; x=1747396852;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uhmvCJtCideJcLgLP8CeF1xAYGZD1D5hleQo38GBvLk=;
        b=ndmYuV4BSx6GMf8/Yg/FAGgTfvMz3vW+Z4J4/KAipM6jL/ADiWVrHWm9tt/i1RlyrT
         WZAZXwCzEKQSwewlMpK0aqsd7fvAyuBel2c5J5rNQGOIS5nLWn/D8SDXqwQNEJXJqIIy
         qFuL6N6tb5qIfeB1Idgpd5czRa9KUv5Sn6qQ74RJ1bnQLum1/xOQitY3zFGV9E5cr9QB
         0YtdP21kzIE7fvjVrDEGHPFya6OdOanthZbZiHJwRRnTb5RJiKyAtvjTo7k3IXdzsMfa
         m9BKOFFpX4+mOLqm5AFGdCiMBU+0YTmOtyUq5eoGQKYNcJC5NHR+A0hOV30FOMydAzYx
         1avg==
X-Forwarded-Encrypted: i=1; AJvYcCXPw7biMNlYPEEks/ldPtlx8tcHZJcAJxwpYvjNZH0UYTlgevyOLAUTekZqczVW+fUNtr8mhT2VrYg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx4HZaPFFDMXXP9eIZgBFcouecBpc3JTfpLDJSl/wxEEFgSuK52
	Fwvx0oMd5pAt5Fcp+SB0cTnxruVDYfX5tfHFwRSMapFosEeSHGcXjCzUj1SuX52oO9DYVQZEy1Q
	8MhgoKdmmsWE80L6ALYBN5svUqNci+30pKqmFA5htUGcDGwKAeYkUu/8bas/ZfMyq
X-Gm-Gg: ASbGncthH3Ttxp5zrLaU6nevdWgaeV14jWh+wxcAwQX9tLR/er7blwivmVG2UNs0+z+
	+VWPx/QSXrSy774N2oTUqLw4zPYwEaG0rkWsn5Hb+1ZbsXDfLqpimQL9KRLg/9Jbk/7a23q0ZLu
	BS/Hpfyl0/NJBLq0Id6tPzDagALFNCuxFkTV6kag3aKSJ1z/0LILRVpNmCR7Fq3oms/VzaPBu/f
	zEgWXuT/a2CUb1cTzEtJjwq7c7RvOaKqFnjOYYNGtXHllXpZZXZVgmH9qg9QSwxPF+sbShgu50R
	6R+gjltGt1eHXLK6Ivj9WvMLaWcQ8r+qlZB3UqygFm6UY8WqSeG17K7rZdX+kSN0O/U=
X-Received: by 2002:a05:622a:30d:b0:475:6af:9fc4 with SMTP id d75a77b69052e-494527b6a6amr17803841cf.12.1746792052250;
        Fri, 09 May 2025 05:00:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGA8qG9PHS4hQuDEdHbS+SHA5v9z70KPJj7sce2vVbNBZDeYH7Q99+EdTOoVi9pAiRgZujDlw==
X-Received: by 2002:a05:622a:30d:b0:475:6af:9fc4 with SMTP id d75a77b69052e-494527b6a6amr17803571cf.12.1746792051608;
        Fri, 09 May 2025 05:00:51 -0700 (PDT)
Received: from [192.168.65.105] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5fc9cbe5133sm1277192a12.11.2025.05.09.05.00.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 May 2025 05:00:51 -0700 (PDT)
Message-ID: <4a72ea06-22a8-4f8c-92ad-b5b3afa25b70@oss.qualcomm.com>
Date: Fri, 9 May 2025 14:00:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V4 10/11] scsi: ufs: qcom : Introduce phy_power_on/off
 wrapper function
To: Nitin Rawat <quic_nitirawa@quicinc.com>, vkoul@kernel.org,
        kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org
Cc: quic_rdwivedi@quicinc.com, quic_cang@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org
References: <20250503162440.2954-1-quic_nitirawa@quicinc.com>
 <20250503162440.2954-11-quic_nitirawa@quicinc.com>
 <58d913b8-0715-41b0-883a-423f29cb5a8c@oss.qualcomm.com>
 <be69cd1e-c04c-4976-9be1-390631316d3f@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <be69cd1e-c04c-4976-9be1-390631316d3f@quicinc.com>
X-Authority-Analysis: v=2.4 cv=XL0wSRhE c=1 sm=1 tr=0 ts=681dee75 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=ZEsPLPZzlgAfrG_QwPwA:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: bhuImw0vLW4Nta-BW3xCf6X9Xk8QdH_G
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA5MDExNSBTYWx0ZWRfX2BCYgYBi+BaV
 O9xAM6p6whTe9YT3tZD304nBYITrstKYTsOXTblS3yB0DNnWy8BkWswveQ/udVVBcLMjiVVBCyU
 cjzqYkjYIjMq6PsIGDXWZn3TAoRtnZwfts2ia7Y4wAqfbeALsBSjhyc5RqIqHDwEQ92m3ReJl0n
 p4Chsw1QAOkna+KllmMp4dcXftVMVnYl2ckm3TeFNIAQoGoiFZ63Q4gpdS3VrAevw4oo4+I64C/
 Chg/BbAZTw27DBCD2oYFiAVXQofFT+OJiyi4IqTlCNem6XIMKwVct8HhE89QTb7p4l9IOXHI+iS
 73Kmi3bsG0Y+UEmWvZHKVVAgsIWLDe8oqvi/IyDbAESKmFi5AbsYVByIavCayoLBhGOQ0g8YMV7
 7R6iF82uEjQMK9hiVMM+ykfAgPUUJtqto8ak2MT83YHpxhOmZLmOLUYZ22LfuYbKjuAqKN+x
X-Proofpoint-ORIG-GUID: bhuImw0vLW4Nta-BW3xCf6X9Xk8QdH_G
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-09_04,2025-05-08_04,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxscore=0 clxscore=1015 lowpriorityscore=0 suspectscore=0
 mlxlogscore=885 malwarescore=0 adultscore=0 priorityscore=1501 bulkscore=0
 spamscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505090115
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250509_050054_500515_16CB77D2 
X-CRM114-Status: GOOD (  16.64  )
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

On 5/9/25 1:49 PM, Nitin Rawat wrote:
> 
> 
> On 5/9/2025 5:07 PM, Konrad Dybcio wrote:
>> On 5/3/25 6:24 PM, Nitin Rawat wrote:
>>> Introduce ufs_qcom_phy_power_on and ufs_qcom_phy_power_off wrapper
>>> functions with mutex protection to ensure safe usage of is_phy_pwr_on
>>> and prevent possible race conditions.
>>>
>>> Co-developed-by: Can Guo <quic_cang@quicinc.com>
>>> Signed-off-by: Can Guo <quic_cang@quicinc.com>
>>> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
>>> ---
>>
>> The PHY framework does the same thing internally already, this seems
>> unnecessary
> 
> Hi Konrad,
> 
> Thanks for the review. There are scenarios where ufshcd_link_startup() can call ufshcd_vops_link_startup_notify() multiple times during retries. This leads to the PHY reference count increasing continuously, preventing proper re-initialization of the PHY.

I'm assuming you're talking about the scenario where it jumps into
ufs_qcom_power_up_sequence() - you have a label in there called
`out_disable_phy` - add a phy_power_off() after phy_calibrate if
things fail and you should be good to go if I'm reading things right.

Please include something resembling a call stack in the commit message,
as currently everyone reviewing this has to make guesses about why this
needs to be done


> Recently, this issue was addressed with patch 7bac65687510 ("scsi: ufs:
> qcom: Power off the PHY if it was already powered on in ufs_qcom_power_up_sequence()"). However, I still want to maintain a reference count (ref_cnt) to safeguard against similar conditions in the code. Additionally, this approach helps avoid unnecessary phy_power_on and phy_power_off calls. Please let me know your thoughts.

These unnecessary calls only amount to a couple of jumps and compares,
just like your wrappers, as the framework keeps track of the enable
count as well

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
