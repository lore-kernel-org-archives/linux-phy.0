Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 726B5D3B7D0
	for <linux-phy@archiver.kernel.org>; Sat,  6 Dec 2025 16:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dBm9yTWxYnb/FCt3KFsmbmDB3mjf+Z8L4FdZqKPaLa8=; b=tavUBuAnMuRNkB
	T8C7roilyuHV/Lf9+97X0GhSYI/oZEBz0FKHqMeBRSY7FOb4yQJlsHno/wXdhcT620KFy3RISJYdc
	1cE2e88COxE6WjVv1myWAKEOyMVhDvI5T+20TUFNQWkG72Zbrgc47LGY7YpuSg0p1oA06qU8LnYv+
	Sj66kKxnnirpBxtRWEdidmKXtU1ZeIDYkUFcNXaXjRjwvOjIEXsclEIv86yTBA6Gr6jrAHBz2Osn0
	Ym9OKiKWh6PO2SXZSpXnMsn3aTI7CMvVSctGHYvKpRmwHa7Dl50kKbzYbTpGXJKu+mfFB/s9V677+
	O5K9dhAd/ve7g3IDN+aQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRurG-0000000B3Ur-3gMp;
	Sat, 06 Dec 2025 16:10:06 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRurD-0000000B3Tz-15yH
	for linux-phy@lists.infradead.org;
	Sat, 06 Dec 2025 16:10:04 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B6CqvtB2591094
	for <linux-phy@lists.infradead.org>; Sat, 6 Dec 2025 16:10:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	avwRmu4KuvXSE6vpAkhwZXpYnNQzNd1RxxJ1CBTuiEI=; b=Rqr6ZlVK5TU0+ait
	nWfvr0aMwW730Btb+m7ULELyIPqFRuPIG7rL6/Wavvp1G6imedqbG1HteOV6OtKc
	xamVvq+h/1Z5Irdgl+ERlpY56NvZ87QB8zOf3C9Rjq3vs1pV1CE1pppA7OU2bBwj
	DCqjBJoCuOFYCFXEz48opoTPtYi/2k+6Hm4FGpxk3oHb38OrBm5/hoJd+3uJ+C5C
	44N2CKu/Wm5mxKEhjKilt45SIgbHMXqJly2gAYbF0GzMyuAcIsSqk5fNY0ocN7aZ
	F1XO1AkXXYAekpvKYvUo1SPuoBFMMYHOegQgW1+dH+SwHu1M6Vcbk/64CPMPa5hE
	YlbMxQ==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4avdnjrvhs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 06 Dec 2025 16:10:01 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-bc240cdb249so3107347a12.3
        for <linux-phy@lists.infradead.org>; Sat, 06 Dec 2025 08:10:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765037400; x=1765642200; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=avwRmu4KuvXSE6vpAkhwZXpYnNQzNd1RxxJ1CBTuiEI=;
        b=IOWcGbHhyx8apcX6SL5fMWO3wLYuKyU/gKDTMXYNqY51SGAKXcdO8zjML1S2VFTn1Y
         oLrH+fImpbG0UI13+so//piPiOA+OSN1YuezhozQqYAI8PZGL/y+ygS29fPHLpcP8dXh
         accfMVA2n+jC26O1a4FEj04P+vUsDO+35ZbYUuLDGEs05/XP8akSAb9zbOlvs57HUXk0
         A5JDHGbyuikOksEmyw9N2wpXPUUi6xSaZl2llLciZRjgnYJ22haWPKl5Pz/6GQiGw3EL
         aFS3q/FwvwBhjgF10JbHSQ2bnMgzbjwXIAXXlxEMUam5CDhNGijlRNq637Uf/ZZdXQ/b
         jkjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765037400; x=1765642200;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=avwRmu4KuvXSE6vpAkhwZXpYnNQzNd1RxxJ1CBTuiEI=;
        b=LgjeQBGHEEpOEjKeOR7J6Deo3wS6VqNrJDCoc3kFSJ2HxibLct3GFomXERtMnlXKeR
         Fu35B8jBjpquOKgvS39Qy/vONpG3Zr1zJIc6kMvfpk1bBBgc4uz8g8tyjjUixCK6TShO
         c7j2luo4sbQOi7SGhMDPWd2r4p5mkZ1W7PEgU1h7z2TaEqGVCFTaW+Av9sXlEGnhGbfn
         i6J84ctDScNsspum/nvElGyxVKj8lAy+2AyBprPzkXFbFKmaPLGa11bzJmW5rZv5VlVd
         J3mtmuOT7ie+sanJ0ezvAZQY3r+y/49EMQ1zYFiCSNcZIhotbSBbFNRqcaNqowjHBAKF
         SrDg==
X-Forwarded-Encrypted: i=1; AJvYcCVt6eLAiCBwXJJEyT7OJkGZdFkCmlX0mS74H3p0flHfIH9orGuhcPFKf5JLVqd960Dg4umO5/hthJ4=@lists.infradead.org
X-Gm-Message-State: AOJu0YxwZcsKb3d5QCZjG8yZRz5RuZhPbdKUNPNC/ZXlGGa3CF9swAqy
	qWxcVhVadaQDzLXWdqyrym3cK5fjxoGSEZiL0BHikCyH1ypPYJUzwBBLtREnI7uhVlS+tXmtAO1
	Zuytb6Sr6x5f4QLVuLz6JbTkKWTUHdMjdYcWmPqKPCEZ2duPLR0dg5DUNBVtpokqEVCfq
X-Gm-Gg: ASbGncs9ldSw5TB88dYSG4KOdhsE+JgNWIo6nOXzUit/B4k3uw6W3xPc6vHpUizp128
	JeaGoQNRmZzbrtyQyQHIRJjX7a1/cUDPA13GGl+Zly+SSfXEdkq3tX9HmhUGx0Y4YfXiKf/FZXY
	tutzWM9pGLhUMr3XL5381ajkrvhe15iIPymhorn8CmRSbCHBZaIpwMIS5NYxsgrmbzPE6Yk8eMU
	lxO+KEgrmtka3Y3z/aoPffttVq6Mc9zHK0nyKcxk6kqjAc79HPzuk2QwKBBECg7gjb9fS8lE2Nx
	DTKzPOp7FRO1M9Chi1wHZomHhUoDxyOJhzJ8V7uuZgcgbJATiIlgxgJON+ez7LfPQHM8AQ7gGnm
	l7zN1q+6mUb5pMW7yIerEwAD9Ns44bQf6xB8FjTB+KcNcmQ==
X-Received: by 2002:a05:7301:da8b:b0:2a4:3593:4689 with SMTP id 5a478bee46e88-2abc725a729mr1272144eec.37.1765037400385;
        Sat, 06 Dec 2025 08:10:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHfnpbDyZywLTyXpLkvaQI9EkqnI43X0W5ZPWM0Tb90WiOsK5DKcaix9agvXs1aS/baiRI2ig==
X-Received: by 2002:a05:7301:da8b:b0:2a4:3593:4689 with SMTP id 5a478bee46e88-2abc725a729mr1272119eec.37.1765037399794;
        Sat, 06 Dec 2025 08:09:59 -0800 (PST)
Received: from [192.168.1.3] ([122.177.243.159])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2aba8395d99sm35314978eec.1.2025.12.06.08.09.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 06 Dec 2025 08:09:59 -0800 (PST)
Message-ID: <6cd71896-9dc2-490e-acf0-4acffe571612@oss.qualcomm.com>
Date: Sat, 6 Dec 2025 21:39:51 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: sm8750-mtp: Add eusb2 repeater
 tuning parameters
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Luca Weiss
 <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Pengyu Luo <mitltlatltl@gmail.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251204044644.3072086-1-krishna.kurapati@oss.qualcomm.com>
 <20251204044644.3072086-4-krishna.kurapati@oss.qualcomm.com>
 <2190ecf7-5dc3-4264-b2b9-e8a20d099b40@oss.qualcomm.com>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <2190ecf7-5dc3-4264-b2b9-e8a20d099b40@oss.qualcomm.com>
X-Proofpoint-GUID: ix3WEPsm1NQbmsEIR66vzzVK0mkuuQS0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA2MDEzMiBTYWx0ZWRfX7iWETxiwYvj1
 wZdfmiFPpMOlszxMSQ8CSQKsIu3i6sYGyzNYZhCXj++lxf6y7LFvC/dqAVquObTrjoft3asE/W0
 R6+GuPdMB64O6oZC8sw5w67rJYMHhNlJyIrVOFWKDpIJYjygVmg+u5M+cYr++66bPbPeC8SaCLH
 +3bosy6wSrJ41tR57S2p0Jg19oHl+pYHvuoVT0xvfHYNpqUeNycJckQFQYLTe67E6dokKXEbGER
 o71PRGCJX+a8uZeOeZrhd/uqqnmr24O9UuBujw+2kGtIf+QfrkGgXVe0kWyxz8DKfLsY+jC7wKh
 GJejGVe91ZFjr72xeZYrMSooyB9qoUcyClsQl+edxHKE2JPgF84dawxa0UcpYmSxHTjKGmr/s45
 SbiHQ+RpJyq6aGv8snXGkmUAuOjAsw==
X-Authority-Analysis: v=2.4 cv=RvbI7SmK c=1 sm=1 tr=0 ts=69345559 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=mGeNq4HQZpM0LKVKY7z1pw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=ijoVjymD8k9AGKG7GLEA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-ORIG-GUID: ix3WEPsm1NQbmsEIR66vzzVK0mkuuQS0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-06_02,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 adultscore=0 clxscore=1015 bulkscore=0
 malwarescore=0 phishscore=0 impostorscore=0 lowpriorityscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512060132
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251206_081003_338420_D9B2BD6E 
X-CRM114-Status: GOOD (  15.21  )
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



On 12/5/2025 7:03 PM, Konrad Dybcio wrote:
> On 12/4/25 5:46 AM, Krishna Kurapati wrote:
>> Add eusb2 repeater tuning parameters for MTP platform.
>>
>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
>> index c8cb521b4c26..b9a4d1c99816 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
>> +++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
>> @@ -1041,6 +1041,10 @@ wifi@0 {
>>   &pmih0108_eusb2_repeater {
>>   	status = "okay";
>>   
>> +	qcom,tune-usb2-preem = /bits/ 8 <0x3>;
>> +	qcom,tune-usb2-amplitude = /bits/ 8 <0xa>;
>> +	qcom,squelch-detector-bp = <(-2000)>;
> 
> This happens to be the only(?) node in this file that has status first
> instead of last. May I ask you to fix that up, since it's even visible
> in the diff?
> 
> Also, does the QRD also need a similar update?
> 

Will fix it up in next revision.

And for QRD, I don't see any updated override params in qrd downstream.

Regards,
Krishna,

> Konrad
> 
>> +
>>   	vdd18-supply = <&vreg_l15b_1p8>;
>>   	vdd3-supply = <&vreg_l5b_3p1>;
>>   };


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
