Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17B7BC61DC2
	for <linux-phy@archiver.kernel.org>; Wed, 26 Aug 2026 09:09:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=brvAQNmn3UG5bqJpcfzu5S32EnCXHBOs4CPzwf8BbbU=; b=yHi8qluzxHwQCk
	gWVcZXg3xh7JuoEzpk+N1KTMTW20Ba+CZNI/Bd2T9VSucn4r4H3UQA5Ml/hNsgEzkyLddKBXHoLoU
	YARQWUNRcqhysqs8eAglkvekjxdMb+ZUSgbLF4hVEMwq4bwEd8Qg4yEC2xVVz4ywGFuLFUZ9YT1Kf
	4/fOJG/fabmoWYGQPxf0UA79rYIF1PaHmw8qTLAsfzb25cfpogT40gK4KXpYuwmzsK10lD0dZ6GFt
	PZYZJad+0MWRnTDZ+aNPoOzSOl2boD62w6YQpODaLth1CPfs6/wVfYXlAdz9D8iLg2MhjwurFwmbT
	Vn0TLy+ofh1ruL/PHYSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wz9dP-000000029Hy-1v8q;
	Wed, 26 Aug 2026 09:09:27 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wz9dL-000000029HN-46Q2
	for linux-phy@lists.infradead.org;
	Wed, 26 Aug 2026 09:09:25 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67Q6S6WE4189921
	for <linux-phy@lists.infradead.org>; Wed, 26 Aug 2026 09:09:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HJTeMn6x+gmnlbmnE6fCgEjecytS/hHGiR+pD9B66uI=; b=myAFVSaPgWIqP+Ft
	fNgo62D3rHNkTjzreTIaQKMLGDhN6GQU7BOWPsihae6UuC0EttIbm/FQkgR2kuoU
	YyYoW+dpnd/OVXbAfsK46OaN+DQ4b/rXyxgKCKG9rjOvr42oqKqgBthJIqS6pFv2
	UzyEIGpbNKw1TEPbG98Ty7Cze+mwBGtmeWBeMSBDLr/Gl9jqvSzFfWzFnYX9s0hw
	9qBvs48qRKsiqp2tHq+V4h/01Bp5hPHYQfrvDjzOwzi3OkNntQRfg1kt+zwgL2l3
	if5CVrH9AhqCIgMkG3WanEJ1t8iC7i54Jis8GDJ0WUSk0r3R9LC+JSzoA8wkSgl9
	6DUTYA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g9cgpuxrx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 26 Aug 2026 09:09:22 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-8ee7cd05e18so1367506d6.0
        for <linux-phy@lists.infradead.org>; Wed, 26 Aug 2026 02:09:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787735361; x=1788340161; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=HJTeMn6x+gmnlbmnE6fCgEjecytS/hHGiR+pD9B66uI=;
        b=G/57NSi6vLyUZdri6xYWXm0Te5eYM4gW/gaQFtYYGrG7Oshgz/mWW0LWaEQbvdXmnp
         WoYgs/LkvqgikaSKNfmmeNzNLOlIp+qZ9T6SRzKsm2OcXGIYCmQv/BRHlOI7DIKn4Gaq
         3cqeH/+oAb3+6YALQw2VXenWpqKIypu5Yq6t+0emYHBsuOD7g7Twi1eESXJJj8MPqHGG
         GLeKH5YbF2uEB8H1JgXv1rZwN/1f8rjmyWa+Jdq8VUaSG2C+yyuWYfNQk+1eugxhvJr3
         EijwOJolWnDbkaJp/xsc7Vn9i9XEUsWu5/Lr+4wyRA1tQ8126roHVntmQm71k09j15hw
         scig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787735361; x=1788340161;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=HJTeMn6x+gmnlbmnE6fCgEjecytS/hHGiR+pD9B66uI=;
        b=FQrhpQ7DtDw4mVFhd7IUgDmlYMqzJctRjCvkaH+7jLbZA5ggKCvQowU3pt/G6duWkD
         9UjiD6uab1gxHErhJnjiojk3muI+2WkuqfZVNgWgLt8A5XZ4ghiT+KLhJJrhmrf+VNu7
         x9dHd0I8nszWUp56LFMqECM/twl5hxZRIQOjYWPpOWa++kWi+/lwbSYHYiqfikS9+H2q
         2C+YSULT6m0gjbnZI+VWIIZXakm8NaCltRtCIv4CLF7u+hwPIZbL8Lc+enYIPNIYy/AK
         XgRl1K7cH3+hoUKeWQCGRzIfecFq10jGckFYTyQW/KGaGu6ahTeSbCeaOQRVGi2LtfVH
         qwGQ==
X-Forwarded-Encrypted: i=1; AHgh+Ro/27zImOnpAburu+SkC7CUkQdB1Wc/0J8xQhxUUrq2IePbJHUnD8W2ol/a/haHlRXcg+Nn5h+unEY=@lists.infradead.org
X-Gm-Message-State: AFuF++lmKdeBQbUPAlLxD0g/H5UmAz+y8vGl5jhLuZ8wivo7uln9Htwz
	3LIFjIP3D1Y/F2U9eCBuOyRNBvMb0CabBP2TosuGqv7RRZSDPvgOTA60dgCj4BnPP4zKZo84syf
	APbAmx8Yh10ToRSqLvvEjPmC1obI4S5v0n1tvQnwNQMW0+Y/INpkwS/sV2psGKKQZlZ62
X-Gm-Gg: AR+sD1256wEa1G/Q/9/3e/VlJo8juzHRIix3lwCRXUhrjqf7zZgAdKy/slKehkcnU0D
	uxCp78LKUAQIf37Ch311ZMdQmhdbvjcnkvAB92SlFEugXp/dIoVShT8EKmSMhPFEYl8vJPh5+Ip
	LbDZRKSh8ZlWeMXt4kdaoQ+p2gwnGGetQB3xtNpS8p1qXwJ12nCL3n6BDyd+oDHWA7uiU58SP3J
	X7pU59CMjQju1ON62h/56eg7CQCNr1YJFaLXRVPsoMT9yhdwp6UDo1H69+XdEBoMUYP8ESsl9aW
	hy3gL2TlaOCVbbadoC59ArAT+EXPVhTYM76P26hLVt328SbhLmB7O7rietxpjyDhej+fMRjr3EQ
	JBCOhG8G3r2atsDb/2vSc4sjr
X-Received: by 2002:a05:622a:1b88:b0:52d:f626:a46c with SMTP id d75a77b69052e-52e42414888mr35922721cf.4.1787735361455;
        Wed, 26 Aug 2026 02:09:21 -0700 (PDT)
X-Received: by 2002:a05:622a:1b88:b0:52d:f626:a46c with SMTP id d75a77b69052e-52e42414888mr35922401cf.4.1787735361082;
        Wed, 26 Aug 2026 02:09:21 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6a5dea83a25sm3677704a12.18.2026.08.26.02.09.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Aug 2026 02:09:19 -0700 (PDT)
Message-ID: <850d76f3-d170-45ab-9889-a511d6486a1d@oss.qualcomm.com>
Date: Wed, 26 Aug 2026 11:09:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] phy: qcom: qmp-pcie: Select MFD_SYSCON for the
 multi-PHY driver
To: David Carlier <devnexen@gmail.com>, vkoul@kernel.org
Cc: neil.armstrong@linaro.org, qiang.yu@oss.qualcomm.com, mani@kernel.org,
        krishna.chundru@oss.qualcomm.com, linux-phy@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260825225729.230493-1-devnexen@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260825225729.230493-1-devnexen@gmail.com>
X-Proofpoint-GUID: bwuPVhlKKAp3YQLDfyDn41oVaMU17yNB
X-Proofpoint-ORIG-GUID: bwuPVhlKKAp3YQLDfyDn41oVaMU17yNB
X-Authority-Analysis: v=2.4 cv=I+NVgtgg c=1 sm=1 tr=0 ts=6a8ead42 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=E07dJwykKe2z2xQ6SqgA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI2MDA3NSBTYWx0ZWRfX+bLfjxuscfAC
 z7YERtKGKpA8ckIPZ0+U6olIu3RBclB/advWhL5Njhy8peauaeinx4V56z1mspOqbpBvruJ5S7i
 nfULTrTOEVZR3iyS0thqm3MIt52G0g8aQHrzvuMBh79Q8stie+9hbfDCqDQd5ptUjTIAkKEQJK+
 nh9ENt8EtOiyfcfFCwoOohdqr56zRloesj2iC1+dOwsbsCdPmCv5AOC7oRiurkuXRDzjdgug07s
 i3Mc0nYySa7e+TFyk988KSUD2Mm+jp38TXX6E2E5BCT1sFOQdu66OPbBF8G98UrVroem8HCOUpN
 Sd+SEPHkAIEnhnl54VejQ0Ft0ZQLqCkni5wKJs1aD2DjutyY14SngIPif0WH7kB6VaLVGIpu8J4
 xgpSLgHX6OU2IUKGisWVnMwt2ctdnz4N5+mjqvrm4nxhW4FuVrphNnYIpbpV9nP6TEqGfIPiJzw
 L3xOFvmn3i1DO2c5yjw==
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI2MDA3NSBTYWx0ZWRfX3In7x5PQdLl/
 JK1nLF6ajug1Py0JiUc1eD1aI/0kBL+aXwvlMEfVIJbniJovvvAfT3Nhlhc2OfeiQioT028fc4R
 +AOn3wpUqRaYr5//LxPAy1oq6DHNXYc=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-26_02,2026-08-24_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 priorityscore=1501 lowpriorityscore=0 phishscore=0 adultscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608260075
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_020924_188613_BD04DCF4 
X-CRM114-Status: GOOD (  11.36  )
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

On 8/26/26 12:57 AM, David Carlier wrote:
> The driver reads the active link mode through
> syscon_regmap_lookup_by_phandle_args(). Without CONFIG_MFD_SYSCON the
> stub returning -ENOTSUPP is compiled in instead, so probe fails for
> every device and no PHY is ever registered.
> 
> Nothing in the build catches this: the driver still compiles, and arm64
> defconfig happens to enable MFD_SYSCON through an unrelated select.
> 
> Fixes: 1781be3c8a5d ("phy: qcom: qmp-pcie: Add QMP PCIe Multi-PHY driver")
> Signed-off-by: David Carlier <devnexen@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
