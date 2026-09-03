Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE574C624D7
	for <linux-phy@archiver.kernel.org>; Thu,  3 Sep 2026 10:41:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hdsn66euqCedg/VDICG246SiD5kmy0bwwtX+WMq4wos=; b=maONOKoMSnNRZm
	EJ2NNs5/JDKdkTg5WhKrp8bQxdQB24EuRE7Zh9xKKLkBfJTcayliT+hQY2An31wWg/CkhLCmwumVK
	J0Ml6NtSh7YP0PHtXDc2SRVVEmc4jzoXepdt8x/484bQ2knWK2yRA6aGPevBS4DBy00sfsXpINUyN
	6ccxVck85kwavb+0GF5s6TBDIGY0wURhEoBvKXs8BUqdiLX2I0W8oTa+VivarlrOFKo6QChcPz3u8
	gvfiaF9VF0H6R1QFdqBysGKGP8sEQLN6OVCsw/sqq3TpoDB/7ELZa+f5TNzxlzlnUOBHvS2bNCdnp
	l7NUBeDlHrZ1MkKOQ0XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x24t4-0000000H799-0rfg;
	Thu, 03 Sep 2026 10:41:42 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x24t2-0000000H786-2M04
	for linux-phy@lists.infradead.org;
	Thu, 03 Sep 2026 10:41:41 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 683AHJ8a055337
	for <linux-phy@lists.infradead.org>; Thu, 3 Sep 2026 10:41:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	G6nUWKkYtFk4ALnCq1etgf1ghLbMCyTc495nhaOBwYw=; b=e1b8yLeIQuggebWD
	YqpVSGXwLusCv8DoR037i7QpLbf8cAhtvCLL8U57FMi5NI4efMWXGdgL6wq850TY
	g9aofQ5CZHR8Ve7G0V+oAYPZ0AduUUsQ4GQ8O1EtuC4VBTnbITCzulp3hR6PUCdK
	4BSBykN3xa/GR1fjMLj/KOfNkuwvT/CjMZmRgRC2qTCZLJcI+RyLjJCZ2mWUM/AS
	YYR1+3RxzXKIDsxkeGDuazI3fCi/JfEw1EhOju1nAhyMJ1kwRmb2Oxl6dvs+qRBI
	CHtMbfymMbCqkWhiPG+tn+l5lV0f457vo/6i9tWtsxwdiTueqiiIFhQH0e9aSYwu
	l27Crg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4genrdvgqh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 03 Sep 2026 10:41:38 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-936708f129aso348638185a.0
        for <linux-phy@lists.infradead.org>; Thu, 03 Sep 2026 03:41:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788432098; x=1789036898; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=G6nUWKkYtFk4ALnCq1etgf1ghLbMCyTc495nhaOBwYw=;
        b=iVAbObjL7QeXxs3yjZgXx+9mtUeFtKOuhaSUC11CU9GhBYGIcz4bnPaMyzFjMBTmW9
         LIm1LZtYv8bShbfAu06krlDc1jt5b+N2Yj2nidocGTWrcYMku8kie6YVd1dTlxv2lHnL
         ZkePhhnyqS2Zr7Ok1f+/8p/P8YwYNIN9l3gD9a9kDppTc8i9TYVA7siR2nu9bzLHOh9l
         ULU8mw9QYWktIxAOmy/tAc6eNjUdfV42yvkjhYXHD3dVlx99qzMdQ1mDz6BNqqLCehfJ
         DClQRvdIHXioctZYnLa4vJimMgGLRFFYtlFRsgsmBEzu67BaoI4wA8hbSYAqBcIUr6+U
         7nLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788432098; x=1789036898;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=G6nUWKkYtFk4ALnCq1etgf1ghLbMCyTc495nhaOBwYw=;
        b=DtUi5aHjQo+9I4vOfpI/mcMBgRdBqaQQ/sL00pD2x1mhZ/s1W6KYEDSAh1oR/cn34f
         9dZnirR4sGI0wmZ5djhm7Ug5sB3eygUVd6pnYFdPAogOoE9Hww9rS/H07B34/An9ywnC
         SkVQhuLDppZsZkLapFe9cB7/xPT+CpPGu4Fzq0Go0oq15rHnI9SPXyrDGe3uJr6NGanZ
         m7xuNuVLse4A1GMUXCynro+qlFGx87DX7tOOdbg5zMIzH1+FVO7TfDLE5+KycK5+LWZK
         4RuwRIkd4XrUQB2Y8Hj5r2u+xMb0XQRN+ESXDQpqBFduI+HRNILjVIiwEk1WkUU1MOyV
         dnag==
X-Forwarded-Encrypted: i=1; AKwUvBxCEGjRSjeRjJMNb4PJNYMe9nzlPtqfOpOPWUr/IRZhW2qWAxAQktVHvCE0jNdc8e5tYJj/lmlQeqA=@lists.infradead.org
X-Gm-Message-State: AFuF++lMa+nMuBNJBy8egQfnB5GKB2Nkzq40BE3K2mLRr7Ds7dHm6kLg
	vm63v4Sm5GWNZxo1hOehBVvyg3+MpR9OvLjm47WMd5sk+Y8F9wLCkdHpVXECVRm0wAeHUXsVHFi
	K5pv7LaoLmi/TR2Q4Ic0SQWwT6yKuJNvafwo7sYn90+k13Lb6UJ95NF1fewqLg6WbW2VbbZZqZb
	LN
X-Gm-Gg: AYBFou2QFL+UOGRIV0fdxMBtdSaoQrr+JlsBrlHnUVyl+dKUPLaZL/3VNEWy7Agp3t/
	IhBC1hG+G0w0A+4ji9IVEO+SMjtniEYlm8/h4oDAxvBXH8jNKcjLT9VHXYvQzXc/8f7kU/CzxdE
	a5AzdoXNCYZIsX9MTEdTxhZJxDj2oYUPbex+yk+Sk//XfTHmxR2ab5RKeu6lM48pJwp9sQWcRuI
	o6cADKOun81oSAme0uPXE5APEz1dWQygmJRiapzSXI0w7xQomJLRc7/7eekqZWG23Bng3mePGZh
	CJOw+5hhYfVQ5YtDF3KpVZl105xnBUejE0MUuXGYve+VKJdft5te5lXTsn0H3gzj1w4AF5FQLZJ
	p/1laY2/eSUDWMKGiDKwZlmjGweXg
X-Received: by 2002:a05:620a:2982:b0:938:fd60:4f9 with SMTP id af79cd13be357-93960eddfcemr1154356285a.27.1788432098235;
        Thu, 03 Sep 2026 03:41:38 -0700 (PDT)
X-Received: by 2002:a05:620a:2982:b0:938:fd60:4f9 with SMTP id af79cd13be357-93960eddfcemr1154353185a.27.1788432097758;
        Thu, 03 Sep 2026 03:41:37 -0700 (PDT)
Received: from [192.168.1.110] ([178.197.219.214])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49ce55259ecsm84661625e9.2.2026.09.03.03.41.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2026 03:41:35 -0700 (PDT)
Message-ID: <36e58345-a236-4b77-b49b-961a0c439b5a@oss.qualcomm.com>
Date: Thu, 3 Sep 2026 12:41:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: Document ST STM32MP25 USB2-FEMTO
 PHY
To: Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
        Marek Vasut <marex@nabladev.com>, linux-phy@lists.infradead.org
Cc: Pankaj Dev <pankaj.dev@st.com>, Rahul Kumar <rahul.kumar05@st.com>,
        =?UTF-8?Q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Christian Bruel <christian.bruel@foss.st.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski
 <krzk+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Patrice Chotard <patrice.chotard@foss.st.com>,
        Rob Herring
 <robh@kernel.org>, Rosen Penev <rosenp@gmail.com>,
        Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
        kernel@dh-electronics.com, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com
References: <20260902141312.649406-1-marex@nabladev.com>
 <34e63564-0191-406a-973a-eb601292b255@foss.st.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <34e63564-0191-406a-973a-eb601292b255@foss.st.com>
X-Authority-Analysis: v=2.4 cv=H4/rBeYi c=1 sm=1 tr=0 ts=6a994ee2 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=+bKQE0WJfmhK2875HamI0Q==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=8b9GpE9nAAAA:8 a=5JN2l_4S2wR4MYYaAzQA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=T3LWEMljR5ZiDmsYVIUa:22
X-Proofpoint-GUID: dn5ep5PpXYnT6bpQeK0QTZJCPWJJ8haK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTAzMDA5MiBTYWx0ZWRfX77FUQEkG/Xxl
 wG2IdsJCtISwM8Y4QFBGTs3B42ez53c0KMDcWZxeAMSWNSo2zZWp+c98Q89sTr5aUmKN5DKmXTe
 zmJ8B+VNxuiftiqyWob6BYPU6vp8+sKwbagw5Or4yckIS2/jOYRI4aDTOKOzrOQ+KuCREfpFA5z
 ZZ9ZNO66SUg8Te3yHEEj5pTcfIyXdNWURspII4F/QBRSqbLaLqW5cxxwMoK7xCXhiSA3vIFWACw
 kwSA2pCywMsA29EtmBpNxxYK6386L2Q2OtLR6ol7qPIFYETCXIlfr4jkmUOmO1pv62g+/5z0AvK
 8D4LNu6MQxJaKjk3WRZMlo/9YtE9l1b6Zye/AgeNaQOEPEqEZmApFbt0IIAKjwkyHLE8PSRLJiT
 VtWnxkSlXxJYVHxk3nUq3YgC1vgGv9O4xftAWAS7Me9rzfD4sAsjJZ+XyHSf2bFKhPt0vlLSBXk
 omM3qsJMgW3Ad0a3zvQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTAzMDA5MiBTYWx0ZWRfX9YQXD5Q9lizL
 wPHvqmVXHIKKA9JBLB+OSaNyDGQFvd8gPt4TagsTd6MXs0PTc51Gp0i0HV+PQHDYgPGTg5wTSR+
 wOO+OOw+ygA9ZVaI/b/w8hefkM0mXto=
X-Proofpoint-ORIG-GUID: dn5ep5PpXYnT6bpQeK0QTZJCPWJJ8haK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-03_03,2026-09-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 adultscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 spamscore=0 phishscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609030092
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_034140_708458_B6197AD2 
X-CRM114-Status: GOOD (  11.25  )
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

On 03/09/2026 12:19, Fabrice Gasnier wrote:
> On 9/2/26 16:13, Marek Vasut wrote:
>> From: Pankaj Dev <pankaj.dev@st.com>
>>
>> Document USB2 PHY for STM32MP25 USB2 controllers, which includes the
>> USB2.0 host-only controller and USB 2.0 part of the DWC3 controller.
>> Two such PHYs in total are present in STM32MP25 SoC, they both are
>> slightly different, therefore they use different compatible string
>> to discern them.
> 
> Hello Marek,
> 
> I'm not sure if/how this fit with all below tags. For all the
> contributions you've made, you can add my:
> Reviewed-by: Fabrice Gasnier <fabrice.gasnier@foss.st.com>
> Tested-by: Fabrice Gasnier <fabrice.gasnier@foss.st.com>

This does not apply. Otherwise explain me how to execute or interpret
this code on the device.

This is a series of two patches, so why can't you provide two replies so
the tags will be accurate?

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
