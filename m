Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44A59C43458
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jul 2026 12:24:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6T83l47JNopVAnlHsaBBkyZqLTpzqiYfZquEMeSj7o4=; b=za3JfaJpxoCqU1
	n02pTGfMfOZY8oaeCSNbOA/eg5Z4/EF5koNR4UPExSnqIXHdsYaoLE5m3sB2KO1LTucQ2tVpklBoh
	57XmMvjDAqBj/lYXIomtxr5GHpHLrwycyUKChXosGPNrc6ssontwftNaG/VgopaPxKQB4Q+i+I3ce
	jRWQOemB2MaL1iH2PJnsHNKVLfLV2YFJf0CaEwLpIN5PTOqXe0stoUp52yk91I1qEVZNoPiZ0IsTz
	i0T9PA/qHVEyxNWkj5FjpDMnbU5MfkGB7yjcNXiJMOcTDTs8oTN9+oBW2CizYDwKxBucSf1Zs72Zm
	oW5YqXyrnr1xqwJxHPig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfGSm-00000004R2h-3pbP;
	Thu, 02 Jul 2026 12:24:16 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfGSk-00000004R1u-2dFC
	for linux-phy@lists.infradead.org;
	Thu, 02 Jul 2026 12:24:16 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6628K74V3009616
	for <linux-phy@lists.infradead.org>; Thu, 2 Jul 2026 12:24:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1Ysu6rFrwI6sIZQattoBdcRvr43Oa6oy8UfSfaHCL0s=; b=fT135sldthQO8UQ4
	UC4egYQJPJDc6gLbrR3Zle0no/md1PC/TWvgf1tdaze2rpGu9gUrw0sHpZ2cuaJy
	yItTn2/w0vU6Kzc1EPu/C+CdEU+7U5j0ONLUCYN4J7LEMO4Ckjy4Y9PR5n1iDUh+
	8bQhAi9q2bn99eeSQYYJ67pAo8zUcRkdUvLQCsWTXlFKUDC5GrJpvzaSvgI+XJp/
	lG/QTSEq5e7bM5vfD51vdWwduogzca36Hu45hbRVvxCcDH43TFAa+dg3hqvsqIYx
	vKAvQ2YRIToVihIaBop4H0UxqzZtOykYJOgPWU9Kd7TIHuJDF8SgUZKkggE9p1bj
	GNBBfg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f579ruxxn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 12:24:13 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-51bfd1772d8so2957851cf.1
        for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 05:24:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782995053; x=1783599853; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=1Ysu6rFrwI6sIZQattoBdcRvr43Oa6oy8UfSfaHCL0s=;
        b=HGBj6ON+s9SBnzJfJZBjS0b7Bk0YiIV4f4OMEkjca04eox1DLqkN9o8//rtQ8ma41V
         Ds//jg5uG6QYXXZA5fMoNZifoBlDfNaNfqvZ5Of5qS8fUOZdyrPzZQHOA78bpgdaPWRh
         1udPH1n6vxmP9DkBx/dchN1qDyMxMHKEUOR9wkdRAKt3OCHDCS5cW91d823R5bmxNPpV
         I2hcf7BLbaapvoFyk6pPQspk7N04+hQ5OH9A5burHGe/JU5DlNGN+K+1EfM8wIjT/haF
         UVZAYToxB1SKzITjLmLqwuUH5oyP1EJIP+dvZDcK7NZsquCoSh9xe4PcHcw7pV8K2dDD
         1GrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782995053; x=1783599853;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=1Ysu6rFrwI6sIZQattoBdcRvr43Oa6oy8UfSfaHCL0s=;
        b=QGBTmIaH92vNafOlgrznrx/xB2L9B2S2QhQF3stRbJyUzaPE+CtacfPF9QYGE6oO6g
         Lic00LPqHWZfho4ReR8Z1WoGMsXaMakX83t5coBkhTgpHo1nSVX4SRsWsd1IXNui1ShG
         YXvSR+eKiltvsrUiwJDQIChRDCzI9y9RliuaGTJTgVDqo2mUsHmy5KCxp9EabdC6WWOV
         3MAx4zzfhAfR4hJLc4gfBBJ5Er8rHLcXSN8RrqucdFDC4+kU7REJwQN7G3E0xkexJcz+
         +Y/K7moqahcrjrjWQvZVy2KeE6/WeSX8SwMKzFWktGKf6EMdSPtSEGuJtrMe7WLjiiTD
         Hwfw==
X-Forwarded-Encrypted: i=1; AFNElJ8LrJZL73AmO5806dEa/DqKDromxNpx8UXsEJ6GXeAYZcqBLjKOplcFXx7nm77XNmrAOmKDoYKExXA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz4od6ZhoRKZj5J6E8Fk0l+wbrtvK1cqwKSYjKI2ppd/d05OTlt
	4OIb9ys2O1vkemA9SDA17uNYqD07hVZJO5D0HSA098F3rr3o2+2aeOvGhqJ6nSUWwjdIiX8I/Ja
	FP9VIurtULMhI9jwcMI5XHtX7PFi1+c/qBS3ZGcbHv/qPaJ5L9Pd3td0xpmlMW1ssv4gn
X-Gm-Gg: AfdE7cnHvjwYb2kmQ+2AjCh1PFwKXNbChutbNkS7H3EKELDRN5liVmnAvHXbj5M+10N
	I0zZHLom6nCOBB3HgKBaJI5Yobyczy58eIMwV0BDKQkUyc24TNPyPQxgvVQg8wZbN8bDzsHTrUS
	V70/Xt0/l0bd0PUk0Lcy++3HNQ3IV1cH2t/LKYhXhZEpAQLMCY8LOfXF6/pHMDLRY7TJb60S+U7
	bjp9OCBOySmafWF4HZGsGBZRUSsJE1ms2gI4p2ceUpb32VKg1pdbzOvPaq9sdiDnutkHOtgw3AJ
	Qh1E8XOW2GL7k3GBPkLahtIyLRqe1LQMtebrXArek9xXG3EgAC8KxZK1mOgXVn8LVG1dTcE7DWk
	phTuDwhjh7sNQjmOW4E8qRX1hsnGfkN1BtFo=
X-Received: by 2002:a05:622a:13c8:b0:51a:d45e:638d with SMTP id d75a77b69052e-51c26b25733mr58178241cf.8.1782995052972;
        Thu, 02 Jul 2026 05:24:12 -0700 (PDT)
X-Received: by 2002:a05:622a:13c8:b0:51a:d45e:638d with SMTP id d75a77b69052e-51c26b25733mr58177911cf.8.1782995052418;
        Thu, 02 Jul 2026 05:24:12 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c12b6091785sm123770266b.16.2026.07.02.05.24.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jul 2026 05:24:11 -0700 (PDT)
Message-ID: <3c533783-e2a5-48f3-8275-4cef5651938b@oss.qualcomm.com>
Date: Thu, 2 Jul 2026 14:24:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] phy: qcom-qusb2: don't unrelated bits if autoresume
 is not used
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Kathiravan T <quic_kathirav@quicinc.com>,
        Baruch Siach <baruch@tkos.co.il>, Dmitry Baryshkov <lumag@kernel.org>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20260702-fix-qusb2-v1-0-b5cf55621524@oss.qualcomm.com>
 <20260702-fix-qusb2-v1-1-b5cf55621524@oss.qualcomm.com>
 <64f7efcc-1cd6-40f5-80c0-ab5f882854a3@oss.qualcomm.com>
 <3goo36jai5g2v24ijlf7g4gehq5zdlk7uwizya7dimqtm5pmrs@norf4xbqdlw5>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <3goo36jai5g2v24ijlf7g4gehq5zdlk7uwizya7dimqtm5pmrs@norf4xbqdlw5>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAyMDEzMCBTYWx0ZWRfX8tH5L3ypClBD
 jdRdGiVoaNj3u984EfXOw4M3zavZrQtOZecMSkSQrHGZzJIOxqBCbQkePThFS3HAmgl7nK1UAll
 lJ9I+0pOmfUtp8YIzihFoI1YKBXyptN6PIluBCwotaNFuhzAP81vMXyMlqZrOZrSjZv9UtEym09
 klBB3v8VYKnkQzVKdJL3mBO/hT8GqwZscPeHMqopGZPVxJhp7ewXIVZ7LPXPKs0JZGdOZ8JhETG
 bVvpfDSmEFmw5Bis4/g1My/MUlupdtqsBWtFkWi++bzF4QWMgQp7nkctIzDERGnOdGRd0eZUEty
 DGQTRh5phDamtyLFn/MnlqvfUkvwE1HuFYHO6HYKsRw+rrBEj+3uOTq4clevn9bGL7omrkvUqm7
 4BqZ6hguXAolliTDWYMlzzyNZuoZY1TCalVO2w6blNjj0a5Cup1UvsJxJnvisF73/m6KlaYQ6xr
 vQF5qp9yV+hq70QVQxg==
X-Authority-Analysis: v=2.4 cv=X8pi7mTe c=1 sm=1 tr=0 ts=6a46586d cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=hY6eLmSKl1PMl6UvZjUA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: LqVQoiOT6yD6OqsJuFF690lNP7H_sKYP
X-Proofpoint-ORIG-GUID: LqVQoiOT6yD6OqsJuFF690lNP7H_sKYP
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAyMDEzMCBTYWx0ZWRfX6Hn0q+qEfBHb
 PX54Px8vrG067eJuCjooqyPkVwH6iQBDPp7ozjh8MI3MBMetnw/GIyvj550wobvzkizjEjMa9Tr
 A11qF9Ey+/NX2IdFTInUjwYBeZ7cnzI=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-02_01,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 priorityscore=1501 impostorscore=0 bulkscore=0
 lowpriorityscore=0 suspectscore=0 phishscore=0 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607020130
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_052414_896630_9F6D0237 
X-CRM114-Status: GOOD (  14.02  )
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

On 7/2/26 2:21 PM, Dmitry Baryshkov wrote:
> On Thu, Jul 02, 2026 at 02:00:06PM +0200, Konrad Dybcio wrote:
>> On 7/2/26 1:40 PM, Dmitry Baryshkov wrote:
>>> The IPQ6018 and QCS615 platforms don't need to toggle the autoresume
>>> bit.
>>
>> why?
> 
> Here I have no idea, the HPG is unspecific, exact details are to be
> defined somewhere else. The platforms, when they were added, just stated
> that autoresume is to be skipped. Maybe original developers (in cc) can
> answer this question. Anyway, if autoresume is to be toggled, it should
> be coming as a separate fixup. I can reorder the patches though, so that
> at least register layout is correct.

+Krishna, Wesley?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
