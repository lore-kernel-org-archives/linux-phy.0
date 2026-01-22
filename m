Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9AFFD3EE66
	for <linux-phy@archiver.kernel.org>; Thu, 22 Jan 2026 14:53:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4sc/7epXOGe/tqZiq/RAglzdZzmpvNyYEIBDjfHfJb8=; b=46/iON+Sk2QdOd
	x39SAJAXCkybHXVOtkBEItqMWBacVHLUgAKrZfMc+oFMMnOwJZzNV/oZFXuya2MuxD6UEyBdId+4i
	hSL4RGbVnTmKmsrS6WeqCx3eXgGe70wTfUFNcO1oxy03aE3yPqfBwhxUmtbn/ErBKKT5OEDaIDo2y
	VWT9SkcNRCspSaRWLE1xeWyBY4kPYLMq8vS2/sX2JxAS8xl70TigytQMcJiAl7fDSAtCNhnIiidPu
	5BWvwOZwgmDpsZcrx8zXrTOC0IVAYqMuMAKO3qeoUn3SnTGW+nbwqcyYi2Bz2SI4vh8ABxQxW5Thu
	YCXfrMNq2LO3mVXEqNCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viw3v-00000007Gif-2ck6;
	Thu, 22 Jan 2026 14:53:31 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viw3r-00000007Gi3-3twQ
	for linux-phy@lists.infradead.org;
	Thu, 22 Jan 2026 14:53:30 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60M8p7n73464029
	for <linux-phy@lists.infradead.org>; Thu, 22 Jan 2026 14:53:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xxtDo5SgwuWHnRwxfuO2BKsV2aCWWPlFFHbTYu0ds58=; b=EcR2YXG8A8ju+AHA
	nDmwaaZPWNRPytohkICtbztnbWmoymmHVrBxlCbfGJLuq1dsMhyphsVWi+Z8myZm
	14HI64CfOrCR9K/g//GVkjyu4BV8zdtR//2fTXNodux9oW2vMhtNIilAoONV3BtL
	h4Ba7MWHEyexMiUoYn+VzKXSQSL7jHM2tD6FQkWG76/Sii1WMYK8PaCmtxs6poLs
	5BLYUbTWRleFrP0FMfhUpYLU1xF31PxsL2noPhNlInj7+Tj8RVv6qBJx410Z+P+3
	kJlLDTlUdqoiNfwc/vZ39KnVnfWJT26U1rRwOBqKFP8J/4uoasZdvI1kBjy7gfv2
	m6aHcg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bu06547e8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 22 Jan 2026 14:53:26 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c69fd0a87bso85004185a.3
        for <linux-phy@lists.infradead.org>; Thu, 22 Jan 2026 06:53:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769093606; x=1769698406; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xxtDo5SgwuWHnRwxfuO2BKsV2aCWWPlFFHbTYu0ds58=;
        b=LBB71K9rwlNpKR+6Y7tm53GYi+ka8fjgpdOjS3KslOuu8gKo+JVuPo3aTKW3+qk2cQ
         pH/2DORNzkYYR8OYl83LtbewkhCSmmhZvn6yCHYkzp+suMtSimm/7OC6g1pZE8vQBdow
         WZqUX6vziPWQ/Jrovlhva9xp6FK0h0eP5vCO4END9PwnqcMR69VpKXrK/UxPrIqv8arI
         Z9iyj17hN6fRrSmTKlOuFWEtQxGmOIA5ZjxzoIQMSKlRTqLdwR/gVtsj7TILagz0kzR3
         8O2ImpKcKer+RI08iFM20TRSv18na7wH82gDQtva03NSRN8YpAsSy4UDNCobx1P/YlFJ
         lNTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769093606; x=1769698406;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xxtDo5SgwuWHnRwxfuO2BKsV2aCWWPlFFHbTYu0ds58=;
        b=cX/Op877k5nx0hX7x6KBS74DW1znUmrRuQJJ+i7YH3vJdCK5jdqUo/vi5yxY84Vjme
         D5k9yhNTKduLhHHDYNFAs3RiVfUy0XyQnOBILYrB2XONL6XvCSJXdOwlVdLZwWZIm4vG
         DEqhsbeFx/EdrLYsuynCsTbU3Ot+5YPIKq5AI8f2ijW7UQnITdousaM9JzQ3lOhfnzmB
         DkCK4CAY7N6WKKhV7v7OoUrKlV8RILIfOfTkCLxO0PPj1ZLiSBck+9iNYiTfrSKRCen4
         iGtAVeh2dtsWp43SN1a3OMx1god6xlwpbm7Uz5tFI0oodzmMH48jczrUxR8uaFB9EG8k
         bfUQ==
X-Forwarded-Encrypted: i=1; AJvYcCUdnzFO1SG1kEhz5bd8CYBZL5s02nKE5AA6Mnpwrg4jUKKwyMtDfvnxmMPbcGTNSRzGNIlDF732iac=@lists.infradead.org
X-Gm-Message-State: AOJu0YxOCmTaPlfsPRvZRoJNr+ncZO/xWR/K8LgUKAV028fANRx0Qxlq
	w7ZiwtbmP2202/FR2kye1YkeKXEqjJdVHyI4snf5cBWa9U8+UmJOsrPA8b7oxOkBTOhw/8tYGl+
	0jkQQurl0693Rte8VHUTIL3H1ceSxHHRj2KKqG2Ku6ngC9I7ee+WFzVa/usimrO6GgXNv
X-Gm-Gg: AZuq6aLiMdmH9B0mEO9iVylQfQNk6tyCg5TBrwjoPW/1tEZOyL5FbUwI6dRHIrrlpP3
	izxfhE74aydC7mYZMoGL9VlCeLN2TkUHhURzUHKdpr168BkNRoVBYYt47FzzWTRDZxDRf80uhRX
	qUyB6gMTGMShbUUWa+q/zdOWX6BSukFWqQHwN9tQx0YzjpaCWbp4O04xSnRpuMIVSgfKTSUdVPH
	vvH5t6re0kNr0Xfo8wwRAeJNDZMJHJcEyBZwugSr9ePM6R63HzCZdj3RquGNTUJVT2vFsfz8lXn
	14hC4AfvZExUgBytNc78sg+jfmWqjLXrCJIaEVNuingh+hKBf/5R5HJ+ZZFMZ7Ln7/V8IiryB2d
	s0E5dK1sEUxH7MczPB6UwZjTEqaFAnTS/DEJY9DCs8euxBwdWOPVdBbMDz1cxOIAPb8w=
X-Received: by 2002:a05:620a:44c1:b0:85a:8fc6:5c28 with SMTP id af79cd13be357-8c6a6797f81mr2197655585a.6.1769093606110;
        Thu, 22 Jan 2026 06:53:26 -0800 (PST)
X-Received: by 2002:a05:620a:44c1:b0:85a:8fc6:5c28 with SMTP id af79cd13be357-8c6a6797f81mr2197651685a.6.1769093605441;
        Thu, 22 Jan 2026 06:53:25 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b879513e8d1sm1757410966b.2.2026.01.22.06.53.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Jan 2026 06:53:24 -0800 (PST)
Message-ID: <de5b23e3-81b9-48ae-81ca-508a36626b91@oss.qualcomm.com>
Date: Thu, 22 Jan 2026 15:53:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] phy: qcom: qmp-usb-legacy: Prevent unnecessary PM
 runtime suspend at boot
To: Loic Poulain <loic.poulain@oss.qualcomm.com>, vkoul@kernel.org,
        kishon@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org
References: <20260121142827.2583-1-loic.poulain@oss.qualcomm.com>
 <20260121142827.2583-6-loic.poulain@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260121142827.2583-6-loic.poulain@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=HOHO14tv c=1 sm=1 tr=0 ts=697239e6 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=vtxEUVkT7waMBiOsAPUA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: l_lK3aMSe-6xGAWU_0MN3eCUUK16iyqt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIyMDExMyBTYWx0ZWRfXzRsYhB5h920N
 repE+OH0OjNbD5OCZXekL1YDkXswtLhPCRzjF8iEEvFMRd0PJ+oV18WFyiPf9WbS06vo3bcS+aH
 UodA0UWOR/Z6UHVHhL/KJVC51DyEZSUmCQA1iJ5VVo49Qhrw1IwzPAIt0EQm+bthUxk7RBp/ceB
 1s8NJsMMFanGrQSGN8xN8k1oR+5Wlem5XD5WAoL5e2dIPsfsh9zGZ7MdHOZb7VBYsH9TpkhriRw
 Wyx0/X16mQa+lTi/ahBGnjy/21DPFFpPCb0ajC92y/xL+MOzJHcwfg6CCqd6jaK9h7BxtT66ehw
 L4mjGnAuALPFIIbin8tjbYRRjBGvpYiJZY230Hu/9IkKBha2tCB9tSet3MwB+nyM0NByiwfMkBK
 oPVJEPWRpoLHc4lYA+SZIQu9F9RtgR6EO97vOT7Qzit0jfYfOWd6/mOrjdjpOjJCkmie9G6LMcf
 Qrv1EmJi6D82pbfYN0Q==
X-Proofpoint-GUID: l_lK3aMSe-6xGAWU_0MN3eCUUK16iyqt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-22_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 adultscore=0 impostorscore=0 malwarescore=0
 spamscore=0 bulkscore=0 suspectscore=0 clxscore=1015 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601220113
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_065328_079952_E38BEA5F 
X-CRM114-Status: UNSURE (   9.59  )
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

On 1/21/26 3:28 PM, Loic Poulain wrote:
> There is a small window where the device can suspend after
> pm_runtime_enable() and before pm_runtime_forbid(), causing an
> unnecessary suspend/resume cycle while the PHY is not yet registered.
> 
> Move pm_runtime_forbid() before pm_runtime_enable() to eliminate
> this race.
> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
