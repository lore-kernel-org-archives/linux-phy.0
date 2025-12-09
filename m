Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4E5CD3B9AD
	for <linux-phy@archiver.kernel.org>; Tue,  9 Dec 2025 23:44:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CG8WaoivujTzsg3geOO5m4GWxvXBfLPwrL9wepC+7xI=; b=c075rU+7UhdSYw
	mZfeB6G1UJd6HFvDexYJvRBydOLb8hW0n/GCOfTBcQPNhSjGh6B0uc4b1zbieXeYI0UXOHO6LRjUn
	S2T3p0bdeLeOQAFA4wY/KuUnmCxJAzm/h/z7hkqCtSY0NWttTvR70RH6fKH/w7/zeR7lWGsoWLHdA
	baCdUNTY6rggSm6gJ0uAHnKY4C5IIIXE8x6r8NW1ADnrDRR7gUZxhXBL2NjwX33ijW16Mig+C9ktb
	gKYpA5wJJ8euJlYQpeolIg9oOfZfTWhR23Z1Pfz45T2RigtFQl4gf061SZK4/mBMOIqBeDJ65E97v
	w6ovGIn+szDhmQITqrSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vT7Nf-0000000EusO-02lB;
	Tue, 09 Dec 2025 23:44:31 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vT7Nd-0000000Eus1-0UbQ
	for linux-phy@lists.infradead.org;
	Tue, 09 Dec 2025 23:44:30 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B9NITEY1226019
	for <linux-phy@lists.infradead.org>; Tue, 9 Dec 2025 23:44:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sjpO8G5wLnjz5we7rLkVbQzCnwi38DbQl9vKvL932M8=; b=g7PoBqyn200hn/pm
	gQB38hsw+ZefxBj3mcgYvhEKafyVbucXxdtMMDz3V7DByzQA1cMe2M2w6h+WN7Jo
	T0Q+bnSvqFNvXhmxyBpTSKeaVO8wPi/VT4YfUnQa3sskED5KX9C3L2sbSjTmhnsA
	IkQUnf9tf1Fvg1snSF1eqgecqCkpX7AaeVqPgdqZKOrI9f4cy2Mv3zNAaYzWjyrA
	gju+WeMUeR5e9LDcjzC233c6fJGV4ECyJAq24mWtH6irEeOWQP7OWDp63izHlKoi
	SNrh2Ae3t21TNfClhK2jLua3Iqi3pu5BJGPMKJaXIKQykXcbRgwfonQukoIwAUdL
	RKCjsg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axvm687pb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 09 Dec 2025 23:44:27 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-bde2d88e5e3so10428967a12.2
        for <linux-phy@lists.infradead.org>; Tue, 09 Dec 2025 15:44:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765323866; x=1765928666; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sjpO8G5wLnjz5we7rLkVbQzCnwi38DbQl9vKvL932M8=;
        b=e7y1z8xz3W9ENoAiqEtfIqtD8sE/bIfyLQ00ANJ2m0te2wUYnHoI24XIr66YCRLpGC
         HVjjXxX4cNREAhSe+k2FGqxAqkVYQBRR6ZEBO+r6FNRYioPFiGTdLGr1iRBYHY8FiINz
         97752M35jvCioffK31R15d/y9SMFCVxtAzND2+CtQ4xWLL6AEY+LHF+QpWeuHSlYP+Sh
         VVCFsxkYC4Jmk7dIRfFaUy+OA86B0mUVEpSqLDgr7v2zVYIwRlplL3Y8p2x5I2Pmmi9B
         Sni5jC83CsbWe4uEJNFIYooGE0QAjRsXntIp8GfqSmmT3RbaROsF1O8zIKeanBvE+vOO
         hx1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765323866; x=1765928666;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sjpO8G5wLnjz5we7rLkVbQzCnwi38DbQl9vKvL932M8=;
        b=AkXvzRSYNDjmc4oMTHmjJmutXNAiGAHhRtIdVJGybZJK+EAg00HXSsoa1GfHHx4SLK
         SpysRg2g7cOwvfUfJCRItum1D/m4L761CjKx8q+k/M3K6JR+ao0pHM+QYsa3k45h6eBK
         cYQ5q6RRqIPgU+QKAAwcHqEs7TAPgOiybp046DLrOmRdyXekp1w2VKpV3txpxQkqTXL+
         Ydu8GJSNLzy45PcYRgsuV53C2hfR7CtydCevLjd0rPZ6YeIMJNqtpYpKvQjeFjn2L0wr
         9Z4HLTnSDEH3Ynk5kbjYe6VYjSn5RZDPCmnAI61+hadzudxk1FCXP5vH2CI1wqQp+eX7
         2VvQ==
X-Forwarded-Encrypted: i=1; AJvYcCV1cCOmZVZ6txl2VNs6wBm0W5yxJVv8qn4InWE30AwtAGnq6plG/waHh9RfpaP4G8jtD3Q7V4cLHy8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx6KuunFTEc0jEUTUTF9c6eXeOAm8oDWGJkjW0mBUCMdAehDfs2
	zzqPxoneTVj7DcN9aJdd3qyniemHipyE5EaP9ibeZmhezZw6WLHCn9EYVq60SNWDlb4SinKVYjb
	CgWy92f0TpciT2dVL6bimuUQJrgQSVMjwQ2UoywNtZzgm5bHYYraoDFbqZmgg22UneMlX/pAolB
	dIFQI=
X-Gm-Gg: ASbGncsMpt1RYKkkk2EmUbHoWYS1V8w59rBs0g3mwub0D+TsaJ1c9YTLZgmtHDDuOlh
	sqfy+agiwEG8W0Twsr1YfcsB5dKy2kAFvI4w3sB5q8tnvDT+b9+RQf2rk1H6InkOvWL7e0y7COY
	5UR2HvsZ5nP05LiJEor4QFVzEnJzemG/Pns5a6N37b91kVJfsplOKznrl2f1lwTwNSRp3qzR8VS
	8syrWgMIuYqs73KJiRODcP3nCZIrhqEdmU/bUc7fpC9zGQHOLCnzMrpyjjiDE4BCL5dcMpfYJBA
	iVLXgiVf2VnR3vkITJ9b7VpcapXpMVq7bVFUG3ewN+OmodyDEDJVGezH4O9NtCnjJRIUCu7IWc1
	BNOtQlF3Hx2nyQG+IeYfwcf1PscRuPSaTt4nr67eu79SP9KoR4UCn+SHr39cm4A88sHs=
X-Received: by 2002:a05:7301:f0e:b0:2a4:3593:6463 with SMTP id 5a478bee46e88-2ac054ac4ffmr527052eec.19.1765323865907;
        Tue, 09 Dec 2025 15:44:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE3F2VgAXXXwJr/em2vLI/efDeZig31TQwsPxK+d2pjqeoVK8eG26s7sKM/261F+V2nUHnb6Q==
X-Received: by 2002:a05:7301:f0e:b0:2a4:3593:6463 with SMTP id 5a478bee46e88-2ac054ac4ffmr527033eec.19.1765323865311;
        Tue, 09 Dec 2025 15:44:25 -0800 (PST)
Received: from [10.71.115.110] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2aba87d7b9dsm62424812eec.4.2025.12.09.15.44.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Dec 2025 15:44:24 -0800 (PST)
Message-ID: <586da917-6ea6-4b99-8222-7c49a5452451@oss.qualcomm.com>
Date: Tue, 9 Dec 2025 15:44:23 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 8/9] phy: qualcomm: qmp-combo: Update QMP PHY with
 Glymur settings
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, abel.vesa@linaro.org, conor+dt@kernel.org,
        vkoul@kernel.org, robh@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251209-linux-next-12825-v8-0-42133596bda0@oss.qualcomm.com>
 <20251209-linux-next-12825-v8-8-42133596bda0@oss.qualcomm.com>
 <4f3og44prqjjxsiy5lwnxam3ikqylvmk3m2ofsxoa5byczhs56@3uvxjtobddxf>
Content-Language: en-US
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
In-Reply-To: <4f3og44prqjjxsiy5lwnxam3ikqylvmk3m2ofsxoa5byczhs56@3uvxjtobddxf>
X-Proofpoint-GUID: kKLuxY7IU0RvcIWb2Imy_4ljVgt2ALvU
X-Proofpoint-ORIG-GUID: kKLuxY7IU0RvcIWb2Imy_4ljVgt2ALvU
X-Authority-Analysis: v=2.4 cv=Ztbg6t7G c=1 sm=1 tr=0 ts=6938b45b cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=GfICSpz_d4rxbVQ3OkEA:9
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA5MDE4NiBTYWx0ZWRfX8xlKJwALXubp
 6OHtZqs3+ObASELLq4hUkxiJcg9ThSwBw6wyCrVX9LJffdi6dhBnXXIl7rmxsbevVYqqaD/q63V
 LD6NFlLnNMQnT/yRJrFokEN1egCYJeOyIjs7RseZKejXkDaRqna0vhM6Wg03Ww2DoJ7SS06RpOn
 sNy2NQ1CII0IB/fSnrtrkn6kqD5lf0IFa6iFhY6JJVSzvtCCUWCq3UecLtXDhcS/jz81pK0XYx3
 mD6OaIUGxlc8KLSCs4MNaVJskmy8S6SIx67z4a0zZ0K/bL2hnpeklJGovzwIPUoaBHcgNGNJDut
 iJvW/16abM7PwVg70tuqjAzbBy2O0dxCoVd+FkQXqE+7Z7iWmLmFEuJ86r4xQEtimTTvPTcwXRA
 /2vg4tJgbUsBDJNTmmeYvn2EadtBsg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 impostorscore=0 suspectscore=0 spamscore=0
 malwarescore=0 priorityscore=1501 bulkscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512090186
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_154429_320681_8A6F04D3 
X-CRM114-Status: GOOD (  16.94  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 12/9/2025 3:19 PM, Dmitry Baryshkov wrote:
> On Tue, Dec 09, 2025 at 03:09:44PM -0800, Wesley Cheng wrote:
>> For SuperSpeed USB to work properly, there is a set of HW settings that
>> need to be programmed into the USB blocks within the QMP PHY.  Ensure that
>> these settings follow the latest settings mentioned in the HW programming
>> guide.  The QMP USB PHY on Glymur is a USB43 based PHY that will have some
>> new ways to define certain registers, such as the replacement of TXA/RXA
>> and TXB/RXB register sets.  This was replaced with the LALB register set.
>>
>> There are also some PHY init updates to modify the PCS MISC register space.
>> Without these, the QMP PHY PLL locking fails.
>>
>> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 285 +++++++++
>>   drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h     |  17 +
>>   drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v8.h    |  12 +
>>   .../phy/qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h    | 639 +++++++++++++++++++++
>>   drivers/phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h   |  33 ++
>>   .../qualcomm/phy-qcom-qmp-usb43-qserdes-com-v8.h   | 224 ++++++++
>>   drivers/phy/qualcomm/phy-qcom-qmp.h                |   2 +
>>   7 files changed, 1212 insertions(+)
>>
> 
> Does this work without DP tables?
> 

Hi Dmitry,

Yes, it works without DP settings.  I verified it on v7 before sending it 
upstream, which did not include the DP tables.  On this series, I verified 
that the QMP DP block is initialized properly on top of the existing 
support for USB3.

Thanks
Wesley Cheng


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
