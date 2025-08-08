Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AF33C87FD2
	for <linux-phy@archiver.kernel.org>; Fri,  8 Aug 2025 08:58:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cCXGqn1VL+TSYxjoTUiquoG/qVq9yMqkgwTdie7VbQ0=; b=psjb5KuZNIkwus
	EMYJmxFxFHvlWXvBLGilTVYVvjSDPMKilQiwpxM6ZVpa+Mz3NMrA85WQO1q7UYbfhb4PTa0hWXsQP
	FWVpVtPxIfEy3gcYMS+ufC9SBXm7ZGN2y531mvd0bg5AGTmT7pFnFDWUuvbj5Ndbo48DAIVnls1gb
	ospI2WIFgOQW5YH2tPu4obk4VSU1HXKAxN1LOyV1glqyF3GsSpYcipgle1dyxKekJDGXyCSerApC1
	yOCpb/FlPAUEzxLZyLEU55yPN63jj+XRYaUEQhK1L+7tHrR5747PYcGQthUq/C8ssJykgAdzmWoZA
	EBHjgOh0HFZG1fj6JUOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukIvk-00000002PVc-0v2H;
	Fri, 08 Aug 2025 08:58:28 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukIvh-00000002PUy-3ndE
	for linux-phy@lists.infradead.org;
	Fri, 08 Aug 2025 08:58:27 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5787EUo3008004
	for <linux-phy@lists.infradead.org>; Fri, 8 Aug 2025 08:58:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	R6Q9n1VBcmPjQskeZ/W9TfLHZuyYCWbxE9Bhoq5xM3o=; b=Tej4IWsX+JmGeVih
	QSTcVIuaVYUBxkH2Im54AmnuSffT3Spd1cVyUYPXW8bkSPidIuSLIGmbl0kGo2vz
	k7soJ6D99KF8nTutfdtUlYm75nq8UFgTkWohLTcaNCLAlll2DDDWrOLmlSZDmwrv
	ka6YRXkaylQzKU7E4/W3s9GYhOKZ6r45OFhKMgGSJv7mKy50uTpJk3QqPB1Br70m
	xFqMc+l9ddQW9j0Qb0AuqHqyBmx+AVyjsyDBe4E+a90Gb6qLOZTNEC9OlsjzJ4aB
	aaaT+xbR7fff7DjR17v6OOexpWHE4KE0HiW4BzLu4HePwZfh+bgjw7IoyHUGSETY
	sW/bbA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48bpy71cnf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 08 Aug 2025 08:58:25 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7e802190d0dso68351785a.2
        for <linux-phy@lists.infradead.org>; Fri, 08 Aug 2025 01:58:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754643504; x=1755248304;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R6Q9n1VBcmPjQskeZ/W9TfLHZuyYCWbxE9Bhoq5xM3o=;
        b=mikDXu5GKfiqFqdOYC8zCV25VXw+x5LhpBKPDfdSIfom4C6kGBWBK+dThLvKx3YBpg
         4v+QMC5Aq9YWh68pArfhyvykNSfoJ//dlusVzOgDEvN9DHHM/mthPkBRwaedSE0b/ckL
         J45irAu5PqceVea35GiXqehb4jz9QPxxamQS/0f25CIpONRM2xMe97GCMtQvV4I7naoQ
         jJsC6RlPlzSgcZ5ODNM817WXLBGArcrTqWb3srNCSF3vE7xjP/UVXx7Pm1ukYkk8ktig
         9qh3BRrmzMY5DM9w/eUtlJ+1pV0EPoqkl5Ny5fokwUBSnHc+2KNUFGchVkvbqFIxnzZ9
         gikg==
X-Forwarded-Encrypted: i=1; AJvYcCXNJo0Qx6+w1R3m7tW6kun1vDoyZnC/BSDr+ZZR7/MDApX5YVMwaD3c2toGVOxU/IchWLK9O/O0niQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YyE5a2SgTlUF0zZ3qj1jcQQQzGUFsT9TT1TlAUtRkeHygNToAIA
	ppW0PK7+wvkYj3zYFRJBHskzrn2FuEYmUi1L7rTuxRKHxmk08KWTOSYIUSzf3jWv+s3eQAHPwRI
	0QEHymdpI55pCwlJgdCqOrOLG15Yz2GpgMGqkjUHOMnHZfkq6lajfP4PpWb1kkM9qlle+
X-Gm-Gg: ASbGncsOun3OcIep4jHlBNdNzCXwZ0SL2EslvqvIDFWpdgzfVetpx/RHyNSxZSuwu70
	HziFSCis5jnf7v9evK3JRYZ4aoeEDChjk2nO0oPA6S5++FPH9LxH8LHkU6/M6zIkojq/DKMQ7t3
	P3/5BerpWj8JpjWkJ1WYVzwx69IcYmaN01A7tqAD9zrHgqUja9H1CZ3d2Ap1y3VtGKHqZkHE5rg
	vY+7wRySh9uSdOxdFW4MWr40QhDYSfkdrdd0urPHPnq4KycfhB31A8CYis3NfH3u9k7PyO+KKhL
	haCSfiSTmuG+ibVIDKXABz+W/HTz5E82Gsw/Jz5s6fYxX9jdQc1PXp3g8TPKkR5eKJNILuoZ2t/
	qd/NSnjDMF+LsZIg5hg==
X-Received: by 2002:ac8:7e94:0:b0:4ab:67a3:ec09 with SMTP id d75a77b69052e-4b0aed20c07mr17186201cf.6.1754643503763;
        Fri, 08 Aug 2025 01:58:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEh16OD+ZoyT6jx0iozIhaDryFGFQR4TtUyX+fYll//iyn3c+QGTMne8GP/ly3AC+UnMV9iww==
X-Received: by 2002:ac8:7e94:0:b0:4ab:67a3:ec09 with SMTP id d75a77b69052e-4b0aed20c07mr17186061cf.6.1754643503317;
        Fri, 08 Aug 2025 01:58:23 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a0a1bf9sm1460998466b.31.2025.08.08.01.58.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Aug 2025 01:58:22 -0700 (PDT)
Message-ID: <9af71063-0629-4ccc-bc76-3fb588677bf4@oss.qualcomm.com>
Date: Fri, 8 Aug 2025 10:58:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 2/4] arm64: dts: qcom: sm8750: add max-microamp for UFS
 PHY and PLL supplies
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, mani@kernel.org, conor+dt@kernel.org,
        bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org,
        dmitry.baryshkov@oss.qualcomm.com, konradybcio@kernel.org,
        krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20250806154340.20122-1-quic_nitirawa@quicinc.com>
 <20250806154340.20122-3-quic_nitirawa@quicinc.com>
 <20250808-calm-boa-of-swiftness-a4a7ce@kuoka>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250808-calm-boa-of-swiftness-a4a7ce@kuoka>
X-Proofpoint-ORIG-GUID: YVCaPyBSxi0NCY94OnLP9bTiFwt_RIv3
X-Proofpoint-GUID: YVCaPyBSxi0NCY94OnLP9bTiFwt_RIv3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDAwOSBTYWx0ZWRfX5UkGNBXvXknn
 R/ZDKrlbqsp+lNbPoViXCOhcSC+VoIyl/j6H8VcnW5oxgUr2x+oZxEcg3AJOwcqfUaYeHrjUUX0
 wIe33Gh1iiANy7BsE0t2zGTLKNjXHPyW75iWQC5Ai2MDAvny4JRvR39VSApqQ+TOpxxk6hTevUc
 pq9SLgQWUUeYJMx3dHqwDKbXHWXXwgVCEaqRTJ9K6sp/A3bWg61evMTBse/t6D9gEQO/woN2jj2
 tyNOF1OD7DgD2vt04fAKwvl0hCnix7386M7fM1dnT/etzV84TtCveninxSiomSea9vgojUSYmWw
 zwnchEo66RwiiJabZ0epsxUDoBpSTYXyC+KVcJRBlmsmBUmHu+mBJxvQqx9lcZnCiIGypq1gcm5
 ydQOKpER
X-Authority-Analysis: v=2.4 cv=LNVmQIW9 c=1 sm=1 tr=0 ts=6895bc31 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=WmDcBHyyyws--uAXJ9AA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-08_02,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 clxscore=1015 malwarescore=0 adultscore=0
 phishscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508060009
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250808_015825_952139_AAC10F84 
X-CRM114-Status: GOOD (  15.79  )
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

On 8/8/25 9:29 AM, Krzysztof Kozlowski wrote:
> On Wed, Aug 06, 2025 at 09:13:38PM +0530, Nitin Rawat wrote:
>> Add `vdda-phy-max-microamp` and `vdda-pll-max-microamp` properties to
>> the UFS PHY node in the device tree.
>>
>> These properties define the maximum current (in microamps) expected
>> from the PHY and PLL regulators. This allows the PHY driver to
>> configure regulator load accurately and ensure proper regulator
>> mode based on load requirements.
> 
> That's not the property of phy, but regulator.
> 
> Also reasoning is here incomplete - you just post downstream code. :/

The reason for this change is good, but perhaps not explained clearly

All of these values refer to the maximum current draw that needs to be
allocated on a shared voltage supply for this peripheral (because the
supply's capabilities change depending on the maximum potential load
at any given time, which the regulator driver must be aware of)

This is a property of a regulator *consumer*, i.e. if we had a chain
of LEDs hanging off of this supply, we'd need to specify NUM_LEDS * 
MAX_CURR under the "led chain" device, to make sure that if the
aggregated current requirements go over a certain threshold (which is
unknown to Linux and hidden in RPMh fw), the regulator can be
reconfigured to allow for a higher current draw (likely at some
downgrade to efficiency)

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
