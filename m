Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03C9EC9830D
	for <linux-phy@archiver.kernel.org>; Fri, 25 Sep 2026 06:16:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DoBefo96NV0IrDmrK+FRTbF7NoS4FWrlKf8CwiRAZ0A=; b=CD1Wy8H5RABVzj
	samLCwswn3Ktzucf7ZYFAGtXckWqoHG6elCDiJRPk6xGLyRTwF6jDlIx6pkazxnYnWM3TkZyNouty
	gmQ5aBVr83uumFEPFhA4GfH/VgO92xsrZ4F7m3sI5xIQrk7ytltTUxGz/Q34pT5hM3tfwyfltkalF
	kG2pkLmCtXp3V2KghUC90aFGJlt8uzMbaIFqkDk54B8A5Oa/H1/T9eQ1OXwMf8x5+on9bb3Uw0rtD
	TbXvh1V+pH+zDFaNE6fqOcwguXrIIUmQaUs0aX7ONY/Tbx5fzrpjTChM8U80b7rK+QTjIsa5rWZfN
	L8P8DTqFKOEmOpRAAh8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9zEf-0000000CjsN-2twg;
	Fri, 25 Sep 2026 06:16:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9zEd-0000000Cjs3-3iDd
	for linux-phy@lists.infradead.org;
	Fri, 25 Sep 2026 06:16:41 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68P4YXHg208402
	for <linux-phy@lists.infradead.org>; Fri, 25 Sep 2026 06:16:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9V2UPAVQF53aIGT+lae1TtiaGVGpbVGhbzFnIsJsyc4=; b=Tp/mw41Nlkg359fT
	773uwT4Y4nIBP0rs6V48GSxCBbJamAulvRFsyYd6/dUk0vBrK/BdAN8TO1SV6dUE
	AxgkK1PFZcd8YBT1K3TfIQBkuIN8HBE2sRI6SCR4nErcYFDvzJ5n9E5CTMPYrLTW
	SBQkYK3pxMnCUNnjV9KpOTd2H3okGaJtrjk8EuffDiMaaqngUqW242xGxZOdsfc+
	xaLe5sR9T2ebUt+HA8/4YBOc0hvfYZ8K125gHCA6IiXUQwJDyZEpBsfdb/Ftdh7n
	OU7ZX741JijaZ1nAjgTgB9Th3qAvWjEpcQSsnTUeCqOyTxe6/U/ueM18TmU799GI
	XSn/+g==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gw898t9y9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 25 Sep 2026 06:16:39 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-341eff9e381so387109eec.1
        for <linux-phy@lists.infradead.org>; Thu, 24 Sep 2026 23:16:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790316999; x=1790921799; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=9V2UPAVQF53aIGT+lae1TtiaGVGpbVGhbzFnIsJsyc4=;
        b=chYJw2cHDo6yb+A69oB2gZR9sPbkuLASbU4IraeVPNWqELVovvW98JNfmENyWYNIpu
         Zp/vZHvM+msysPX7MaTeSDNA0OMI71o7+7vIBishlNjLwo+IzZcYdMni/CURzNfn4O+l
         VpH9G6MQYlaX1+9ajVokiwgcThB/d3ljZLkwQsqaIGMClFzeGhgg/BECvJJwUb2x+97T
         ZR5qIosd/Uq2JWBEe6SQn7hbHRbmu1wPFvhkYyumuuZ3/Q1deL83auTL7e2MScnJfJDv
         8cok/oJ5SoXyc6zdjtH0P4FTmsGiWUgQN1bkPG3tz659PabxfH2cjIRC2lJfWuAtJVvg
         leAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790316999; x=1790921799;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=9V2UPAVQF53aIGT+lae1TtiaGVGpbVGhbzFnIsJsyc4=;
        b=NTAcLvIt4BtH+eiJjdp6S6qYLnHlxnGtuWnHTv1Lvd0btuLf7y56UhcUst2BgYJP6I
         /4jHlIFbXbp/RrIej5z6fpFPywfUt6N5e6rP2pDEZ5I1dD1wxSmAfJ2Csl2vgPS46GUH
         dXe40OvW/MgZNG8Rvmb4q8g6DwPZf+91TnsCMKOCU+1498T5WPzP9J17VR9FDubws7rm
         ZIxYgfn1tESH4pg57Qyqx+dw8JXuffeeCssU3jurrfc4OLLcW8m8MGjHrN80LMcT6CYm
         jIACBEAADZ6kPsAQVJp6cZy4VpGDYL1Sw8Pj1OFU+JX+wwhmr0z7AtX4+pUudarvtYjd
         bgMQ==
X-Forwarded-Encrypted: i=1; AKwUvBz32MBfCiRWwEUbXoX3NTuD/SWy5BzIfh4hhNfqtfROALzhZRCOeCCCFAwnF3Dq6npq2vyNqXbJt5Q=@lists.infradead.org
X-Gm-Message-State: AFuF++mgNhFISpengLiItkCu8Rf6w1MTleHabiA/F8pZURbaUCLQRuPt
	UHd/wngcgL4CqsyA2S7s/XbUo3FUtYGBln29Ltd/vBl2hAN8rtpUGWdvx2ohRY13ku+q6CptwQE
	o8ObteVcc20SH2ulS0yYKAfrcvl2FCF5KN1hLLB/gw9V+Ejm+kuSN285WVmtYZRypBcDN
X-Gm-Gg: AYBFou1mJn8b6pr7w+TckAxJ0/N7Ok5hslO+TdMf/7wgH3Z0TuNQjWf2rNW9kOFGzSk
	Op5SyBgx9bTEFlVZ7ethklDfyZJa/8HDeyiu46Y5ANWqgWa0XKGxyzSfck+P5DNeRVSR63kGgR5
	E4vCX8KyFRtIrJYGFQZ28ehZoxaWlr6y7ab5iUsuSzIf26N+Yv9t1hxcmfOyn5OsBrw1XOu7inh
	YSgiAwTnHQ/HDLNttP+zxfOWQycDkZch1rH9HuwvTJ/rzOBbOgsBHxgX42TtOhuCFLMP+uywbm1
	vgu/WH1HTS+CrSNOlIMUEym+57VWjPmSkl/pILhNB5M3jCdphi5KiT91yfpOIlT+mfluejkA0mA
	ZT/a6vvZefrLFmP3DOaPQB8EjeBQ=
X-Received: by 2002:a05:7300:a7c1:b0:341:4553:a529 with SMTP id 5a478bee46e88-34199433ebdmr956259eec.20.1790316998518;
        Thu, 24 Sep 2026 23:16:38 -0700 (PDT)
X-Received: by 2002:a05:7300:a7c1:b0:341:4553:a529 with SMTP id 5a478bee46e88-34199433ebdmr956219eec.20.1790316997704;
        Thu, 24 Sep 2026 23:16:37 -0700 (PDT)
Received: from [10.206.111.19] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-34144e4a6b9sm3264979eec.18.2026.09.24.23.16.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Sep 2026 23:16:37 -0700 (PDT)
Message-ID: <61eda17e-8c21-4629-9aca-a3d93da3cde2@oss.qualcomm.com>
Date: Fri, 25 Sep 2026 11:46:32 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/3] media: qcom: camss: Add Glymur compatible
To: sashiko-reviews@lists.linux.dev
Cc: conor+dt@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com,
        media-ci@linuxtv.org, vkoul@kernel.org, robh@kernel.org,
        devicetree@vger.kernel.org, neil.armstrong@linaro.org
References: <20260925-glymur_camss-v4-0-d7c2983d6d7b@oss.qualcomm.com>
 <20260925-glymur_camss-v4-3-d7c2983d6d7b@oss.qualcomm.com>
 <20260925060140.154E21F000FF@smtp.kernel.org>
Content-Language: en-US
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
In-Reply-To: <20260925060140.154E21F000FF@smtp.kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTI1MDAyNCBTYWx0ZWRfXwzsdFnjFrwlE
 hS37ipD3Hj5z02VeBMEh73+ldwx97SiaWPOal+sznDfibCcJcWJkQ5a42myVbEaMZZLEAqiL+gj
 TIDkcVj6PEsjBmh55i23gSt+k145YQo4vabnLLLTM9oSiKGwHg+ZJpKUPWnFKr69DNupSVC7ulZ
 +MgxyzqsrHjX0qPE9lAxOw2awHZsWLVGX9w2FEyu1w5SS4cke7vtvuREi4XyS4NdLXHkcn8ioQb
 jHIBgZWByaYWmcNa+IWOtlG6hxkf5ogs0WiwcyQZbENTekkD5ppwlCw3ZNtloZHiuvf+BO5DHHT
 R0mjjV40uTKfV4+vJZFldy3ghFThGFWNpSyw6VuRR6f0W2DwYNneMysN4Xg2HUWh8hCFljFt5EZ
 IM+8hDkTNygVuQ/7GaHnmYWLmb8ltSDQ75zTjeBCJjMjKz0/fq/ImOiP2w4Nvwf1sPGizyIn3ck
 EX1l1irmkxCI562SdZw==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTI1MDAyNCBTYWx0ZWRfX/AOKpjTA+W1o
 l8OqNeR2DTFXbz/wZCDiRg2fdRtqoyKRg3JNYqRlznQAFTXReyjwMsa1cpZBHVHMDCH3j+iQfRm
 g9jDC2K3sl+xmnRxzNjIuU4y/Qs3NX8=
X-Proofpoint-GUID: 6t3pV3cMu2IxV4Hvk3IAJZmSWlLQC7Cx
X-Proofpoint-ORIG-GUID: 6t3pV3cMu2IxV4Hvk3IAJZmSWlLQC7Cx
X-Authority-Analysis: v=2.4 cv=EJWTQFZC c=1 sm=1 tr=0 ts=6ab611c7 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=GpX4wC2T2iRaT2CMI0cA:9 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-25_02,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 clxscore=1015 spamscore=0
 lowpriorityscore=0 suspectscore=0 impostorscore=0 bulkscore=0 phishscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609250024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_231639_932045_21F8A878 
X-CRM114-Status: UNSURE (   8.19  )
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



On 25-09-2026 11:31, sashiko-bot@kernel.org wrote:
> Does this hardcoded resource mapping cause the probe to fail on Glymur hardware?
> 
> The commit message notes that Glymur only has three CSIPHY instances,
> while X1E80100 has four. Because x1e80100_resources specifies 4 CSIPHY
> instances, camss_probe() -> camss_init_subdevices() will unconditionally
> execute its initialization loop 4 times:

This is addressed in below driver patches 5 and 6 and can be picked separately:
https://lore.kernel.org/all/20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-0-dc244e124e71@linaro.org/

---
Regards,
Nihal Kumar Gupta

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
