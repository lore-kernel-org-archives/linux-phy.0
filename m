Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D484E606A319
	for <linux-phy@archiver.kernel.org>; Thu, 22 Oct 2026 02:52:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=LArIWRgK;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=k3KslQfo;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=Dp9hi6Jg
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WrcOnJSxikPf3xMjPxBuao7nZRxEPwzisNOKj/oWLjk=; b=LArIWRgK+pU7Om
	EZUQnqUCAmCathJTrXyGpiWHCjU0IF6a9mqPqKLmOAwVVKHsudFK9HTEPC/lcKPXm6yKhvWA+NZjx
	7/TBM7cHMev2UOhOPUhkTBvVHS5Lz+01z5NiN8iccqjKH24iPZizm7qh8JkpmphlLW0dvjGwnMMwI
	MbFLXEhbqMm/VaB43h1IOo2QguUbIygWppZ83Q4UZzhOT0cFY1uWymMVv18bAtmU0DcO9QqZv3ApG
	vY3dGQ5QUQ95B9kWV3Aj44l60vHQa8LRO5Z15HQ7m2sUrJWuYa6QdUsxx0A8pDFb5s4x/0FW5kgfb
	qK2puFIBxOxZYDTJ+j2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJiuz-0000000DEmC-2YqO;
	Thu, 22 Oct 2026 02:52:37 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJiuw-0000000DElc-3IKe
	for linux-phy@lists.infradead.org;
	Thu, 22 Oct 2026 02:52:36 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69M1jSZ92825033
	for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 02:52:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2KsmcwfPU0B4n9fvquhuv3nC0jKgk9A00OaniATuFj4=; b=k3KslQfokLDwp3Uh
	M2ghKmiRaCWGXWwVVbF3171UCszgjCjlTY0vowF5YxiThjqY3g8YrSjOhS2TLUmh
	tkA5l9Jvx665feuuKW7ulrw8XszqJgqCCPex57j6G9/QMBa0bVlignmCB7uj4S/s
	C+q77C8qQ63c81OD0D8ArlNf+D2kzPKB9T+7dVug3tlboz1JRT9LhbR01wI26kVY
	NRACKVC3xICyE1pD0vNi0GAcrQdGnHloQyP39SFTmRUKpTHryNVMWoradEAwhCgW
	qrH7FwIqoZpSRFMxSND4y68oYxNBJJ+ifTjI0tNeHR1rAj+L6PobGmEQd/62m0Ux
	REjCTQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hf93bgbfq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 02:52:33 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3ad3fc547bfso1255769a91.2
        for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 19:52:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792637553; x=1793242353; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=2KsmcwfPU0B4n9fvquhuv3nC0jKgk9A00OaniATuFj4=;
        b=Dp9hi6JgfvlQMNQY5SntUMW1WN2KhwjaI3LKyoO4j/8odGVQHUo72MDghnzSrp8Vgl
         KULTdKdVK0HtwWObufM2yrZ8KKXRxGyf6+YHU7+teSD3PJfUKJKVa6ovB3cJ220YL3Uu
         onklUxuB1UfenxZlYjKoZrI+piN9cjVQfgXWaQ+TIqj3sEemEMiClBuH8Z845CIL3ogx
         RNBXdaDRoi0uMu9s4BCbMH9YSAnzZJaTLnM+A3zyvPf+ddeCI6WwDhWMzdhGreThCeY2
         SbwYYdopXSY7IDGRRAPZoSE0VmzxncuzoAgw9Za/CiaVzCM+/NZv/t5pwnjFjELGlapz
         JEkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792637553; x=1793242353;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=2KsmcwfPU0B4n9fvquhuv3nC0jKgk9A00OaniATuFj4=;
        b=jCdK/a0Ey2z4iE8BFjUCn7WLWHuSwgbW0INX1iU21BVMzGNmCz4AoQSTaP+daEa/rV
         tc0sm7RKGSIFfnmYd5NTWxgmhJk3wMuuEYQo4mpGtXavWjz5hQ2SysfEs25qFwtvzzkQ
         8Antk1qGeV7MgP94ExLCJXQa1rFaKwXLs4XlNo6MnNXeOFuI/WFYuREgnGA62rmsy9PU
         +IPKPYYlN7pn6kKdEhw+LXsTFaO8XbZ7KTH3MQb68D26il4qrxcfwwXngh6I8cfhEXSI
         HihSfKmSJ3eyzXHhEio7g+qbyw14eI8KP/omCbbJ6KOtt7zavB/ejbZRY55Hc81vcHEr
         YH9w==
X-Gm-Message-State: AFq9FYLw8bWN0RBOeGCMQfFM32nWCayJrHHtyxt837A1dVcmULAkVTAv
	qjYSiB7rEKxWl+RNLzoLe0j5BABnOP08pg1I4n7jXcYiHDEL9/9eo9Zwknm9KmE+EyL8xLQ4Jhb
	ZLJxRz79Wo+eEKbDjEhOMYtxJpvCSQ3D5H6VhnNGTJMoGtuPr95FmlSp5R90yAECV0v/L
X-Gm-Gg: AYBFou0oBO5DupWWgKOCVaNt8om0hKgbPkAPQkLexH2BKOIQX+ldsMn9Q+ahIeqk2y5
	70FGKrvvmOwXAt2HQAngvMlBjh+ZwVH7x2Vy2bZ1JrjEYWmTFkmxYnRGyf+AtSkdKKi4WGJ2kPl
	2WngNRbczFlx5ofWk6rR0CYi9vjHMfSCdXqm7Gk2mxYNEtKBvepA7EGrX7gYTjH5lR6OGyNJzmu
	vCo9LhUnKrsJKoasG34htOgS8i3isTqN/oKEnPmD2VKFz+2AxZ6NCf1QdNDrZ/PGuNCSNHT03wB
	hcyPajMPRZa6Q5Ha4r34klBcf7slBmmWASKOIsQjXbeW1CqtaZoJNXAfuGbVjIj5JMX00gJGoo8
	OqElnYBkRXZTE5rfGqP8de+TrCZgxcj2K+YFUe4XOLG+JAO6tvx+K8Lo2X0Zw
X-Received: by 2002:a17:90b:2e42:b0:3a6:f1d2:57f8 with SMTP id 98e67ed59e1d1-3ad86afbdeemr2985656a91.2.1792637552640;
        Wed, 21 Oct 2026 19:52:32 -0700 (PDT)
X-Received: by 2002:a17:90b:2e42:b0:3a6:f1d2:57f8 with SMTP id 98e67ed59e1d1-3ad86afbdeemr2985630a91.2.1792637552158;
        Wed, 21 Oct 2026 19:52:32 -0700 (PDT)
Received: from [10.239.96.176] ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ada4890c56sm2048165a91.2.2026.10.21.19.52.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2026 19:52:31 -0700 (PDT)
Message-ID: <a661cd2c-debd-4444-ac38-531df07637d1@oss.qualcomm.com>
Date: Thu, 22 Oct 2026 10:52:25 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v21 14/14] arm64: dts: qcom: kaanapali-mtp-camera-s5kjn5:
 Add DT overlay
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
References: <20261011-kaanapali-camss-v21-0-04fd28d815c6@oss.qualcomm.com>
 <20261011-kaanapali-camss-v21-14-04fd28d815c6@oss.qualcomm.com>
 <92bb95d5-946e-4169-8382-487ed9ed2254@oss.qualcomm.com>
Content-Language: en-US
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
In-Reply-To: <92bb95d5-946e-4169-8382-487ed9ed2254@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIyMDAxMSBTYWx0ZWRfXyWVn/UDwAYhs
 3XiZvapb4yBsAC9nmTd107bxZRcQTwtBl5S9r951lOUX2xG5wRikqUx2JAwAeqostFNB3Roqs5p
 wOG8Ago4xn5+csKXLFY/ZuPDM2IlUYXp48ArGbm1gI7xxHcg0+14VVWTriivJgXaXf1VdBTNa6b
 vFpUjdkWMcO6RMA3eIn4ymDda8aOJABX3Y2cqQ6N9ChEmEaeNhkuOe+RD8qauZxmDE1abxR6HO5
 hwhVLft4AZpUSS4VClrUDlYZXPo/31np92UOG8Htmswd6QAUB13eRrmikJj2q5Th8jqv9NVHBPm
 e3jUID5jrDIrGe0ER9gJL8g0XRPHAlG6/mIcl2sJp+NfdQglBUy5iGfXI+7cRON1RkglSIVEtt0
 LVaLQqQf0rWL9nwXaJMkEsc2GpLLtgeJFa8qiZGGhRPWs0yP7b1A8W4uSrzltg2d0OSyKulrn2u
 lWKGhKHIyUg5wKLtXBg==
X-Proofpoint-GUID: jXcOjFsbECyrbd_-zcO7U9Or1CJIHEsJ
X-Proofpoint-ORIG-GUID: jXcOjFsbECyrbd_-zcO7U9Or1CJIHEsJ
X-Authority-Analysis: v=2.4 cv=CMy/zhrD c=1 sm=1 tr=0 ts=6ad97a71 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=-Nk8vmC4l4_uGId51r4A:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIyMDAxMSBTYWx0ZWRfX0lK/JpTcP7kZ
 Rp7X/jNUlt4TEnfIzRKSVn3/62F6+OaB6zbziBl08h4eos318qMZWu4hYeG1JVx7tvuhjMrRZSi
 XXTtOgc/C3KRVzSTIqmEFNDtpDaRce0=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-22_01,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0 bulkscore=0
 clxscore=1015 phishscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610220011
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261021_195234_966636_29A030A6 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 10/21/2026 10:02 PM, Konrad Dybcio wrote:
> On 10/12/26 8:45 AM, Hangxiang Ma wrote:
>> Enable the S5KJN5 image sensor via CCI on Kaanapali MTP board.
>>
>> The Kaanapali MTP board connect S5KJN5 with QUP I2C bus by default. This
>> DTBO enables S5KJN5 on CCI-0 interface connected to the CSIPHY2 in four
>> lane mode on a rework camera module.
>>
>> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>> +&camss_csiphy2_in_port {
>> +	camss_csiphy2_inep: endpoint {
>> +		data-lanes = <1 2 3 4>;
>> +		remote-endpoint = <&csiphy2_out_ep>;
>> +	};
>> +};
> 
> Please define the endpoint in the SoC DTSI like the glymur submission:
> 
> https://lore.kernel.org/linux-arm-msm/b5734dac-1285-452b-8107-9164e6a3e5fa@oss.qualcomm.com/T/#m55a2d04f3fe573dbbc86fe89a874514494eca345
> 
> [...]
> 
> 
>> +&csiphy2_in_port {
>> +	csiphy2_in_ep: endpoint {
>> +		bus-type = <MEDIA_BUS_TYPE_CSI2_DPHY>;
>> +		clock-lanes = <0>;
>> +		data-lanes = <1 2 3 4>;
>> +		remote-endpoint = <&s5kjn5_out_ep>;
>> +	};
>> +};
>> +
>> +&csiphy2_out_port {
>> +	csiphy2_out_ep: endpoint {
>> +		remote-endpoint = <&camss_csiphy2_inep>;
>> +	};
>> +};
> 
> likewise for these two
> 
> With that:
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Konrad

Ack

---
Best Regards,
Hangxiang

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
