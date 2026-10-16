Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3939CCA464
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 12:25:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6X+usjQmeyterFSp23hUeGn/fVFxDyHov53Qm2K6g6M=; b=b2+zMfe+Ot8sg7
	Shko6vEaW74LLQKriXMEZpkArK0VaEmyTwMJIA5fHMA0CJ4p8SxGhTQBU0B5RSgle46ALw/tdqZ3d
	HygIKWg8Olj916OSus3ZRR3ff1uvaT7Gq/5/vw79Vh7pbzNJ0KINTbMt4AvBDWpremtf/5kqWyJtk
	IL0GYLifczGQS9D3SYvG4sQRT5HHcwQnw3VAUreho3R2f1d8QBlLcAE6hmU36CYBGuwbuGUB0qpvH
	HBW6Zw4k54mBXHAsqZY1Ow7hj8FztgHklrcW76vnp7WB1kGPSySkGTWtLyYl4JA2iennj/fps4zaV
	v3ThCqikhoC4uJ6fEbyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHgzx-00000002roD-0O1j;
	Fri, 16 Oct 2026 12:25:21 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHgzt-00000002rnZ-3VXf
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 12:25:19 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69GAAEQ21793592
	for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 12:25:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	L5KKnw3ZnqYuCdQsMnmUoivXJzAJ+F0aigtmDLqNde8=; b=pZcrHI/Nn21/Kc0N
	jrfmdJQXG+JchReAoDZB7DGEIM8h9K520r3Saz9pktARjYxC0gp4Fpghm9zpRB44
	soA0Wk2vNmaB1KOM5mxDOkV8Of4sUvEDLfT+Z33qresL1ne7zM4bjQj0OkEoNj01
	9XI4c9eYlPjYf19X3KOoikHz2MOrsq75/HXS1SwN9uHdgBfHFiwVf1avQ5AWzbIZ
	2Nu/C+RRcfcBQSJs8zXxsGCKJyU3HoBWCBnscsnZmCX8OzOXdH1wYoigZcl+lW0x
	5WGJaY2P8fplPqmFKTqtTKYkorYG6p9BjFVhJjOpGWbJGmILuJBr8ZJ1v6fup4GM
	2ChiDA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hb3seunrs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 12:25:16 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-89f71ac2e2fso703586b3a.3
        for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 05:25:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792153515; x=1792758315; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=L5KKnw3ZnqYuCdQsMnmUoivXJzAJ+F0aigtmDLqNde8=;
        b=VVMnZ/hAGcNmLDtW2f3KfLXt/eZKzFSQ8GgX9+jXFnwjH1B3p3uie0vuP15K8osPq0
         /IfDdTcdjAzxcLstKekHiSBYyCOk34YK8azaBun1KDPfMPXAdAIKedEF9dJowTBn8kx8
         9avADxKrevYfLtooYSBPNdbgngjFiygWXHT4kEpCn7EdL1sH9d+LuEBTa99fez98I/G1
         B4I1uhEx3iFNsdZ4bQBUqnrvlMRxlQiEWbDX8lUwG5MBlXXz0jJv//LFe+DOuTCoitoz
         69iIFVCzuvEPeHPfku3sWcdGnloJY9nu3EQEqb3wf9RAN+vSXwqmiCXPzH0/1kwSSEfb
         Gikg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792153515; x=1792758315;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=L5KKnw3ZnqYuCdQsMnmUoivXJzAJ+F0aigtmDLqNde8=;
        b=MME8O+aYaqxjgRx0Ya3czABnO9SPJAkSfe/qb+0dGjcVnbL/o/qEKks6j6B4wra9GW
         myJ1HupapamdhTuWHpzt0gUAzZtDH0iQdOnzrxPO9YOmbW9lrDs1x4ptY5Frvh8m92EB
         ZsqjBbbZMQ+GKRa1P9xpAayv45fMUFr3Hdi8sGfCd3k8+Er5mm/ltlhq9ERlmUM7YpU7
         jFAIrtBiW6pOpfJ5zOc//r2WEqT+/v0adQ3k2EGT+WQdHOgyt+fM3ZlShzfVfHsIlj9E
         hZjIX29da3Azt/ucsWIVMPKHbR/x3urtZhhET6s+H1UGkEnJE/oPYC+XBuebgZR8Khuh
         GNhQ==
X-Forwarded-Encrypted: i=1; AKwUvBwncbgWuQGtYrnFqQBTtHldnY+a4f737qUdiO22DlMXCVCD4z1z/EIed/4g2qE/3C7HUv5Sy5jPVko=@lists.infradead.org
X-Gm-Message-State: AFq9FYKEliK9poN37+T9ahQSr2jyItf1I546Hbnowz4XiUehJc+5/aP9
	30iVNsWFVjOLVDVSvMMiYmIqjBfmZsOwmfmFf2rmPHzCIh9HK7NPRL/eqIHbiiW9KQQa/l4mKDx
	Gr4p+VNf+o730foyzuCjDDUPb1ZVuaLPKVdPx/9IPJkJNvbqtOQQ9GoUySHWk2Otqk6P/
X-Gm-Gg: AYBFou19Nr1R+/qBdLcwOCsLvlSctL7GrlqG6EImeiJvF4MRS1tDqvB9l/T0AtAmr1J
	c2jTYMuTr7coNR2TdAVtKw1g1Bd+vW8CghzKw2AqKcZujM9WzD3F5gY8hztKq2TwyHsRXcC75Lt
	ErF6E8EEDcMKd09Jvu0ds9BX6d0K8tkD3v4kCzR70aT0wRXc51YI4uCYtOZXhlG/EqGbFrM4f1o
	N1LgPDC0ZNQQrpne+h3TTp49PUgZIE9ER7MnPUEIY1WGpWe6F6NsUcJOIyfWDMOXBJsJe+X94UQ
	j2CXOrszVoPrOJV+LIXdPbCTKFr9ovryKSKRxa0fT/gUx0PYFKiu7ZSArjbnOAGDEh+MchPEY/1
	z6EiIZKYYj5FcJWg/ufJh70JmEcc=
X-Received: by 2002:a05:6a00:4287:b0:89e:779b:d03 with SMTP id d2e1a72fcca58-89e779b0f37mr3987762b3a.6.1792153515203;
        Fri, 16 Oct 2026 05:25:15 -0700 (PDT)
X-Received: by 2002:a05:6a00:4287:b0:89e:779b:d03 with SMTP id d2e1a72fcca58-89e779b0f37mr3987742b3a.6.1792153514715;
        Fri, 16 Oct 2026 05:25:14 -0700 (PDT)
Received: from [10.206.111.19] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-89f57268ff1sm1007172b3a.22.2026.10.16.05.25.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2026 05:25:14 -0700 (PDT)
Message-ID: <05a03228-09ce-4521-b596-4e9ece57f4ac@oss.qualcomm.com>
Date: Fri, 16 Oct 2026 17:55:08 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Subject: Re: [PATCH RFC v2 4/4] phy: qcom-mipi-csi2: Add C-PHY support for
 X1E80100
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, geocausa@gmail.com,
        Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        David Heidelberg <david@ixit.cz>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        Suresh Vankadara <svankada@qti.qualcomm.com>, tjose@qti.qualcomm.com,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20261016-x1e-cphy-rfc-v2-0-377654253193@gmail.com>
 <20261016-x1e-cphy-rfc-v2-4-377654253193@gmail.com>
 <010f8a27-e058-4c8b-8681-24df30c29853@oss.qualcomm.com>
 <80314471-1913-4dbd-b91d-7b25bf4b3b14@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <80314471-1913-4dbd-b91d-7b25bf4b3b14@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: Zp6pnJxVEdVVg0Z5SurxDtvXmehiP2T_
X-Proofpoint-GUID: Zp6pnJxVEdVVg0Z5SurxDtvXmehiP2T_
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE2MDA0OSBTYWx0ZWRfXzAtLbottLuDl
 0ombP7p4vUo5d5pDZ7qwtbhTEd+tdt6plzeeBXU9Vej+OCHOVwzx5OcHdxG4wzfUeWALCx+oliW
 dkQT2ul50m/T8ynyjMVZR1Gvfw4WQ1k=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE2MDA0OSBTYWx0ZWRfX82U41Zjdu1jP
 86WUexmKVdZjRzT22dhWJolDPCjikaeEZWIRbuC5SMYXLdN7eAmKV452/r9QztHWqyAlafpHdTG
 4ZUNwf0F0OeHDA/rDfeYx9z3xu7/qN6QF1eOQBcOQT1s6mjs2hNIDNa0kwZ1p8vAvZIrk8HN2oN
 pYRLGJV+ptC+ETPAMIBHGG1QMxHr4gUJ/vB+Z2iwmy9opgg7b7/X7oEDM41K/yt8ERQgLHb7nKh
 ojG2Lq1BTrRzDOb3LSJlOKvncB8e7TzAvcd34jmgQuJcgA4nWe/kni1DDH4p5h4mbPiVa5fyJTI
 aev6SCDvsBNAu8BTqYL6sZNNS+nDmrGTBmXK864J57h05Gr68PZVs+vQ/jUP5LcPtySoz3A41Qs
 6Ix4w11sPUHtWyOcE+/4Z8ozwHjwEkDItToHTwpjeqy25QSbPrEvlxg5a5kkS0+aSj2+6yKefN6
 BAdkmV9dh6T/9WhRVsg==
X-Authority-Analysis: v=2.4 cv=Se1i5fRu c=1 sm=1 tr=0 ts=6ad217ac cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=A2W6AcXvy7-QRKLDUaIA:9 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-16_01,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 spamscore=0 malwarescore=0 priorityscore=1501
 phishscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610160049
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_052517_998723_1C3C5A38 
X-CRM114-Status: UNSURE (   7.90  )
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



On 16-10-2026 17:35, Konrad Dybcio wrote:
>> Can we write the delay value in hex as well, to keep the table
>> formatting consistent.
> I don't think delay in hex makes sense to a human reader
Okay, that's fine.

-- 
Regards,
Nihal Kumar Gupta


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
