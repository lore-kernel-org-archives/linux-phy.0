Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BCD5C43458
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jul 2026 13:43:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hlj4I44ViCUs4WsIR4IX3Kn22bcSaAI44lrdiEXRhH8=; b=YYQVaOUzlp6Sb/
	sBhTA+o88D2Zbp1kdiO3pbWawM9RJspOh5PbGX8pXqpiRaPf44KuGV7kXWJkPgupzpI8Yyft9ma1E
	2SWCb7zyVw1SQ4hbwPMKDVPHNPZNI+lKI0SAb1xeXeE76XjJpQ2HNGCFGgOImzCy29LPOh/X29Ng8
	wbJrR0P54b4jziMX5zdSfiQJMzA8rTKxAHsHPC1ie05H8er62Fiy5daDzUK1vtMdYJI5jhu54Cf4V
	jU/WU6OsQH+aTqv482nPApKwbc3AepdAxejACriT+XZk5FxO9dN99DgE8wyeII3vzLYQ1D31eUZ+X
	bR5Dcl5C+l40rbpqdHDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfHhc-00000004YFL-23W0;
	Thu, 02 Jul 2026 13:43:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfHhZ-00000004YEm-3zYs
	for linux-phy@lists.infradead.org;
	Thu, 02 Jul 2026 13:43:39 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 662D0Xx9416432
	for <linux-phy@lists.infradead.org>; Thu, 2 Jul 2026 13:43:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zYdCLALUzA6mvHi6fp8BSqBzgrgOzPZPKPwE47MB0oQ=; b=Qq6Iz3PC6DCeF6ih
	714mf6XHQhWAY2MCskzGvaFKilTXy4abI5zGcrBVBbWhQ2bNTN+Goc6V0uy0BB9K
	HCp7WjpJF9de5ux0PEDQly7zNKYU8kJ5W/UFB840ZWQIq8hyQNRD2VjsrYrDFOla
	BTLgfBzJsWwmp1tBNnTjAkGT3+FC1SG84Flh6lQXB1DUHcJG9+Y9GGYT1S2NrZ5h
	yGnQ8TbfkYXUXCIjO7ZB4tpzeWuSCBuUEd5jYnNRtOAIrQNmCWACyiGop4y24d+/
	YjCyIhY28MHSiFMb7NfHDfSod0CSHRYQQC++XPtjRVAI5btyz8y4kiZaLd9Xvj/H
	ox266Q==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f5n9410y1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 13:43:37 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-380fe2a3fc7so331997a91.2
        for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 06:43:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782999816; x=1783604616; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zYdCLALUzA6mvHi6fp8BSqBzgrgOzPZPKPwE47MB0oQ=;
        b=V4tUd4r0lHg2gpF4/j0oyR+kG3jt3LBf21qYh7tlK6l14/vfhHjXT81/o/MDbKGdU+
         v0nwPxjzCl1NoxjbyNjCPTAcGCBPrbELjUoHylXj+qyawVzjsAR+/NfEoYHrRu5C4Ie+
         ioTocLpNxERBrovIdvbgf0Z2u4IXBywt1JCyIq1DWkhIMV0/LSunHnXy6BWAskD1VH4h
         NMKEkGfnbvrXRI0HBVHL7sXaTZjvtDL6ic84r49ej2IpZYpc6aQj1EqNg4hUByoVrFWQ
         MmVFBW6Zof/p51BJVo2DaGKeSgCyWBnNPagiEKUhUBgeEnAvJCMGQakZ3ROjEVZAWD5C
         zkhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782999816; x=1783604616;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zYdCLALUzA6mvHi6fp8BSqBzgrgOzPZPKPwE47MB0oQ=;
        b=RRCk4Uek0ogHdkQu6FFQno0nPlWyxdHAF3estC3XFAuAA8IhzK2gAt5BuWiCGjLuht
         Au2m82KOkMhsV0lujL8fISJ1EuhC9Gc4/Fdn8+y94o3/m9JE5TXQjBtTsuZrUHfd11kL
         5sLeB+xrXwPtJGXb8GJ0kntli4y+mexk4sv/0KIOwCPPmW1Wl5CNS4yd6wb6fSQE6kZN
         6PI6Vu2m53uTm3MT9tGmC8w9fp+uyQo0oG+aQML1oPwJd38G56WPSkh/CHFf+fivFzZ+
         eb7Ayz6La7uz/4aOMbgiDwhiYVDN/NgrvlkFrVRY8z65/SYogZLrzuglV9ZE2R6j2pgm
         9o9g==
X-Forwarded-Encrypted: i=1; AHgh+RoaZOW65mFjQKV7dTk3TE2qaOwVwnXqYsnSUhDrxL/5YfO7pM/Q4mnOEw9lYbDoXnv1UyzD0kvwusM=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywa5s2OGpVE4RnOJwo39YuxeeI0X3gTXA0vS2Jf5LjQttNJROt3
	/ccZKbRzOYi9lTirbCxEPDopjnNOUd3QkvY37LdiEH6NUCa86NkPZaSbnrW/hwK9AzdrxdZG9pD
	UluIhdIjnmncqETtfq41a5pawjYacVIENhAvpyKfF9jFpsWSINhVpvXNqJMzOy7Cd6xwk
X-Gm-Gg: AfdE7cmegkYy5m3a3jeUFTIpWip48D9Iu2kNh7d98DDVpC/0fFh5E9FExC9V95Ha644
	YnrUWZqNGoAEcgVPfZfwjxrT9/2U09WrQckMPg5gf69ckhAXOMtaex5+W+1CekElYBa8UM+igW8
	sL5EJC1ah7KIn/QGGWMPTsxJX98ffMtu/frfPkZeiuC1rY5k3Qhwr/BDfkA6me1Tw64SgReZPD8
	vXDgC6HXqhjnoxI4w9jfZl696PHRahBQloOCDH2yMc1tKVO4Ek401P6tPRJXmx61wXEv5/MjRQm
	tUQN0MDFW1WTOozsDtctJi/6b6jHqaxZ5QlrFKf6rZ45NWoUis6xVZLCXks9jJh6tlE2R6WAp8l
	bSfBRv+H47wlUF/VCFetAjgXNcrGFw6L6+42EMG6SbbMJq2vs2N8rawbM7dSnzdAuVkv+KC5VHK
	q1X6U=
X-Received: by 2002:a17:90a:d44b:b0:37c:7090:821b with SMTP id 98e67ed59e1d1-380aa0f436amr5638745a91.10.1782999816535;
        Thu, 02 Jul 2026 06:43:36 -0700 (PDT)
X-Received: by 2002:a17:90a:d44b:b0:37c:7090:821b with SMTP id 98e67ed59e1d1-380aa0f436amr5638703a91.10.1782999816037;
        Thu, 02 Jul 2026 06:43:36 -0700 (PDT)
Received: from [192.168.1.7] ([122.177.243.236])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-380e1636a03sm1154162a91.1.2026.07.02.06.43.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jul 2026 06:43:35 -0700 (PDT)
Message-ID: <e39c9092-30f3-4c04-8bdc-c6400871cecf@oss.qualcomm.com>
Date: Thu, 2 Jul 2026 19:13:29 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] phy: qcom-qusb2: don't unrelated bits if autoresume
 is not used
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Kathiravan T <quic_kathirav@quicinc.com>,
        Baruch Siach <baruch@tkos.co.il>, Dmitry Baryshkov <lumag@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20260702-fix-qusb2-v1-0-b5cf55621524@oss.qualcomm.com>
 <20260702-fix-qusb2-v1-1-b5cf55621524@oss.qualcomm.com>
 <64f7efcc-1cd6-40f5-80c0-ab5f882854a3@oss.qualcomm.com>
 <3goo36jai5g2v24ijlf7g4gehq5zdlk7uwizya7dimqtm5pmrs@norf4xbqdlw5>
 <3c533783-e2a5-48f3-8275-4cef5651938b@oss.qualcomm.com>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <3c533783-e2a5-48f3-8275-4cef5651938b@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAyMDE0MyBTYWx0ZWRfX3+3ibMEGQP9d
 VHG1wuZiAJhamiJQcHI55+xGr0aszi0HSeACDGtM7Fetv6mKW/ZVReaC+cfSLjLUBkTCFkL7DgL
 Dikxnwft0nYo8mNUXRv3f9RS5E1ObNn87n4YKxqMAW9/p9AV36t2yFVdIoflfySFhlOXfGSYeA/
 DY+d6GADWNYFSU9cgr8UFYe8N2teiQDTJChMIwTyrnioyl7icaFJepDDIj0GNJsoM5AfTwHgEoE
 uws3Xeajp5NnWy6sVEk6i9HKKd0FIndOQBJnl5ce1YD6+EwzqhAHI2DcdztCsFLwbpsGVCDBLtx
 nk27cKhnj95nGiYTeZdbIyW0l1l+JYa+RS9r2hHuGZkGXyda86+594Xuc9PJvrEz/YS/YQncMaK
 5EHvppD28xkhTinKXWMddLFaashEXPsqPfYMJMF82QZwY5MfiDqD5BDXYx+FReeGVKVHOEfprTA
 NYaFa7y7/042NLUfiMg==
X-Authority-Analysis: v=2.4 cv=Lv+iDHdc c=1 sm=1 tr=0 ts=6a466b09 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=OtbC+xJwP8rERjI3u+ECAg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=OgPk0aSyYpcDEwaxJaMA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: Z-nrpsALXevjdPkZsKaY0tI4uQH-KlCa
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAyMDE0MyBTYWx0ZWRfX5R5yJcVfTnSu
 juKdwxs5NYttP1u71qpdZGICykwcrgFptrH1xD1X7OOs5z1B0a+r8LCW8mYJBOCidlX/oAWY80+
 CjB0+M0q3jIgVOyCTQ23K5uvVnvKflM=
X-Proofpoint-GUID: Z-nrpsALXevjdPkZsKaY0tI4uQH-KlCa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-02_01,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 spamscore=0 priorityscore=1501 clxscore=1015
 bulkscore=0 suspectscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607020143
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_064338_020415_56C9DCAD 
X-CRM114-Status: GOOD (  15.19  )
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



On 7/2/2026 5:54 PM, Konrad Dybcio wrote:
> On 7/2/26 2:21 PM, Dmitry Baryshkov wrote:
>> On Thu, Jul 02, 2026 at 02:00:06PM +0200, Konrad Dybcio wrote:
>>> On 7/2/26 1:40 PM, Dmitry Baryshkov wrote:
>>>> The IPQ6018 and QCS615 platforms don't need to toggle the autoresume
>>>> bit.
>>>
>>> why?
>>
>> Here I have no idea, the HPG is unspecific, exact details are to be
>> defined somewhere else. The platforms, when they were added, just stated
>> that autoresume is to be skipped. Maybe original developers (in cc) can
>> answer this question. Anyway, if autoresume is to be toggled, it should
>> be coming as a separate fixup. I can reorder the patches though, so that
>> at least register layout is correct.
> 
> +Krishna, Wesley?
> 
I checked downstream driver code and I see this:

1. If the phy is qusb2 v2, then we are setting and clearing BIT(0) of 
TEST1 register.
2. If the phy is qusb2, then we are setting and clearing BIT(3) of 
TEST_CTRL register.

For both IPQ6018 and QCS615, I checked and its BIT(3) of TEST_CTRL 
register to be set.

For msm8998 it is BIT(0) of TEST1 register.

Also for qcs615, in downstream code, I see that auto-resume is being 
set. Its a mistake from my end when I added [1].

[1]: 
https://lore.kernel.org/all/20241014084432.3310114-5-quic_kriskura@quicinc.com/

Regards,
Krishna,

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
