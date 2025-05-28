Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 711E4C5B54E
	for <linux-phy@archiver.kernel.org>; Wed, 28 May 2025 12:19:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gT14kBQv8R8LLUD/yBmQPbt2wHL8f6k03KnfwmTDx6M=; b=1cZ3YN0uwIW4A2
	zqBdo9/yLJJNqcbp8J1ULC7AMwB7I37W8gafaefH2KCIxyWJSuaBrGBVQixVuPsODFvNeX6ErX0QP
	r+V1leowUv/MYIVx4OxZP+SgCEp2tlAvZnzKuI3t/LKUS2NaQVt7iMHa5hZocHaHFPxNSkwNN6Egb
	IeJXxrLexFebsvSn6umNSv5rW/56XbIptCE15g0kNXAWyFPXg9RRoQFVCDma4fSrU3kBV36uHpCfV
	90YamFPIKI3a9WMvMIi7wE4w4rx7mm6xpLQajkWvdY8xepMK5l9a0D7sgiQiZfp6C1V7JdF1wnTrb
	ecUFmuWljclXqjEoeE4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFl8-0000000D5jT-00DF;
	Wed, 28 May 2025 12:19:50 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKEjH-0000000CxBa-30ND
	for linux-phy@bombadil.infradead.org;
	Wed, 28 May 2025 11:13:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=vgyuAx7dSshWcQQhWvUbmXixp8HbacWD1UD6odQRfDI=; b=mTJ/dykzv08mk621n/3WQmWTsj
	dSgayLDq6q8+bkDcncHKv9Y7wiVr/XnKjY0dvKWaIrhkHIui8uJcstsxeE1+Y6RnfuUToyS5/li2L
	btPlX1GLgYMpzAglEF/7ZwySNuP9mXpC1Dw8OUxBWpJnwxOXRgvlxvZYxFKzeM+guHr3dics67oyq
	37ZDG98uQg1MuXgwV4NBBk231Jxld6HywfoVKc4+2IH1pYt+gXILAhuJfGO54w5L+NMc1oLsAInFi
	zY2rADCQYA+bJaUCsL8OuAJxU0/nJ4AUhfezz9/OnhPzRpRwWDygH3dt0nLQRkKEk45QtVrBo33d4
	/h0KpAUA==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKEjE-0000000DYFy-1lDJ
	for linux-phy@lists.infradead.org;
	Wed, 28 May 2025 11:13:50 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54S5msOl011831
	for <linux-phy@lists.infradead.org>; Wed, 28 May 2025 11:13:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vgyuAx7dSshWcQQhWvUbmXixp8HbacWD1UD6odQRfDI=; b=SXmpdtcwbio5lhSK
	rN/v64jtZDFc8B9yTOIX04ce5thjB3uvDghaVCXJFic6wmAcctUmKZSU66L8weja
	cRgkn5jMhPFhuj+WKbIx/Q26n1Wl15ralEzIKH3baDjvZOxBsaNh0soGYkGeOmjz
	OQedSDimJPJ7Q2Np59bTbL3VxXoQTig9ijJFCSq2LC5a53stMbFjA+JNuZ4qBPn5
	8LtrbbCOkzvE0c4CP97NjquG2yabMRQOBpZk/cTBORCF4gNVpjVtMiwmSnvn4BQW
	VozEl3nf97Cp73G4f4fxfxG5/iShGuVIfH06rLzOVJqkueAs2dlmaiZceTbN33vA
	v3oFHg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u79pa1t8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 May 2025 11:13:31 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d097083cc3so1466685a.3
        for <linux-phy@lists.infradead.org>; Wed, 28 May 2025 04:13:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748430809; x=1749035609;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vgyuAx7dSshWcQQhWvUbmXixp8HbacWD1UD6odQRfDI=;
        b=Eei9ainutM4Ld2Hze/lL4rwMFs5FOCRfO4H1kPz0yIK7GTpMuHsZwTX9AaF5Arqe4D
         nJha+58i7rnLaRMXw714Hx7YSCxbtuNne1H//sjBumc3LpKR5WXL9LrtKlpN5vB3bev8
         74UNZZjXWyWRF+wifplYXtdnFeQ3qjxcjtcItJN9q11OOB/bcCOvRrjlZEFNPz+d7ao4
         DveueUczGxOHb09pSf/Wj3t01vUJrxu+1pSvkzXxqbHvYwtC9dWyJBEB0sXT6cT0YqGX
         VxFDzdpcSinkiE1huuMLC9801234yY1Bnw2xtWGXBhGFk7miXZ5dVmtyRztnh0/FBpIK
         oZNg==
X-Forwarded-Encrypted: i=1; AJvYcCVf2cFWz1Bki41rgkysjAgxG1CclGz1ZzU2rvAaih5EBtQE5IXmk4HFxmDrkz3+aRAXKmX+WCqGDQ4=@lists.infradead.org
X-Gm-Message-State: AOJu0YyqNYjjJXu0ghNhp2qC1wTejrmWNcicRaFE6DdPUkkNPWYFHvY2
	s+dYjDEcZopdVvHDN/tquC67rL2kcY5CEFf1sLPCRWI0mi2DD5yKOyOT+poQPsda9pt4Qed9Vgg
	7p12AzY9uL/iiERavPJoidJtVICMdDroW5OBlA62lsHlnniRKM5lwsK0S1/LEbSpn44cwk3s9Vx
	JO
X-Gm-Gg: ASbGnctXhZNI6m4Kmg4w51qDdRx8Bbf4vCGqxqiTfi3r3o74t2Z5efnyn4k8mPECOey
	oUpwRcfXsa8DLtNUcAzDetHQVwi52VcHVxraJAcgF/MPhYky4FGwdFRqctVOGEZlJy3yeZPy22E
	AXjKLtV7tpBbMPAYKhldK3EOpIIhtMjsdJDEmYZtrhl8nckvGvlFdLrkiL3bifMaplrGaBZImcZ
	r6GHsAsldl24Lan5LuHzngZvuKJ2Nwe3hp6VN8mS5z4Vg8z8lIohBLXql/ayuukNOMKtIVp04qS
	QreBcCCgRrBs8Frz1KV5rr+A54GIrSNFV/AlJh1wdUuGdgBjZwS7sKAb20IagVoXwQ==
X-Received: by 2002:ad4:5c65:0:b0:6fa:b954:2c35 with SMTP id 6a1803df08f44-6fab9542d12mr26075826d6.10.1748430809487;
        Wed, 28 May 2025 04:13:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEeKRrREHf2m6YYb/SYCGixIP+aO46rPYYipbA1Vi8xkIBSTUT+o+9WPcrWNSOLCsqtY0Enyg==
X-Received: by 2002:ad4:5c65:0:b0:6fa:b954:2c35 with SMTP id 6a1803df08f44-6fab9542d12mr26075586d6.10.1748430808982;
        Wed, 28 May 2025 04:13:28 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad8a1a1323bsm90175166b.84.2025.05.28.04.13.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 May 2025 04:13:28 -0700 (PDT)
Message-ID: <9037fefe-aa40-4884-97ee-b81ff8346944@oss.qualcomm.com>
Date: Wed, 28 May 2025 13:13:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/6] arm64: qcom: allow up to 4 lanes for the Type-C
 DisplayPort Altmode
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
References: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
 <styd5gjksbsqt7efylpfn6bgwgyvt6zexxiooihjsnmp25yigp@unq7dor6gso2>
 <447c3b13-8d6d-4bcb-83c1-9456b915a77e@oss.qualcomm.com>
 <inpfuxskvmrebxitqtqwzvpnpicibo6zakgk4ujpcrqrpef2vw@nhclj5rg7axr>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <inpfuxskvmrebxitqtqwzvpnpicibo6zakgk4ujpcrqrpef2vw@nhclj5rg7axr>
X-Proofpoint-GUID: cKQrEFMUue6VIhVTjM_h8e-QVwA5EfIR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI4MDA5OCBTYWx0ZWRfX+SuaW6BdYaeV
 Xx7xKANtZVDOvfDQAo58s68lNFbiCtItHdW7QDeJzofwg1B72UO1UHDNG9G8B+BVKWRZ+1rfotX
 qgQ/quMUVILKIYAVfAAuqNeOExOahGC7zuWhwYB+1okn/QjEX/sdDFB23LlfYSy34oXbIswqS/Y
 wHe+6CbtIhDhcjgWuzjGoLcapp6UOOT2vfC1YgkEghks/7zLU+io6dXD2K139RcRioezaVPu5ny
 gXRXFuOux2TtozJPAtrTKSYwfcJS7dQjyvMJ92lQ+sPU91aIJHg1N2vZNZjafAJwDBoFMnMv3W4
 an5NsOXmaVid1b8eSlHFQ3lLneFdHaSAD44TpuYgyYm0pB//vlZKUunihpeoj0BcHA/zCrx4hI1
 gHfTj6h6AEDZGIlIeyVnUwzArQkTVs8WIdHyokMWia+ftn9mZn7mjnhBgipWZ6gm2KvjDhsl
X-Authority-Analysis: v=2.4 cv=HNnDFptv c=1 sm=1 tr=0 ts=6836efdf cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=PC4tWo4A_DL9_zoQyE8A:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: cKQrEFMUue6VIhVTjM_h8e-QVwA5EfIR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-28_05,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 mlxlogscore=633 phishscore=0 mlxscore=0 spamscore=0
 bulkscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505280098
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_121348_764926_3794B82C 
X-CRM114-Status: GOOD (  21.56  )
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

On 5/28/25 11:00 AM, Dmitry Baryshkov wrote:
> On Wed, May 28, 2025 at 12:24:02AM +0200, Konrad Dybcio wrote:
>> On 5/27/25 11:10 PM, Dmitry Baryshkov wrote:
>>> On Tue, May 27, 2025 at 10:40:02PM +0200, Konrad Dybcio wrote:
>>>> Register a typec mux in order to change the PHY mode on the Type-C
>>>> mux events depending on the mode and the svid when in Altmode setup.
>>>>
>>>> The DisplayPort phy should be left enabled if is still powered on
>>>> by the DRM DisplayPort controller, so bail out until the DisplayPort
>>>> PHY is not powered off.
>>>
>>> This series doesn't seem to solve the USB side of a problem. When the
>>> PHY is being switch to the 4-lane mode, USB controller looses PIPE
>>> clock, so it needs to be switched to the USB-2 mode.
>>
>> I didn't find issues with that on X13s.. Not sure if it's related, but
>> on the SL7, after plugging in a 4ln DP connection, I need to plug in
>> the USB thumb drive twice for the first time (only in that sequence)
> 
> Might be.
> 
>> But there's nothing interesting in dmesg and the phy seems to be
>> programmed with the same values on both the initial and the subsequent
>> working plug-in
> 
> Please try using a DP dongle with USB 2 passthrough (there are some).
> Or just emulate this by enabling DP PHY / DP chain for plugged in USB3
> devices. Would you be able to see the USB device on a bus?

I only have a dongle with both display and usb that does 2ln dp
(I tested 4ln dp on a type-c display that I don't think has a hub)

USB3 - yes, USB2 - no (but it works after a replug)

Are you talking about essentially doing qcom,select-utmi-as-pipe-clk
at runtime?

Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
