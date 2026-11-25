Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B914B606A333
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 12:02:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Do68E8IN;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=FWZlc+cD;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=SiMQAhQh
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=7BIDvwHRikt1kyOAFrtEbUHmzl1JwiE1J4nVT29zVVo=; b=Do68E8INvUVbamI2S6eFzKVbsE
	oSR7IQAsPA37yQwHDa95lLMy9Sf23ICoM+tB9A3IGkDBAmXqS/jY3ry6i0hX7kYQr6n8znymPP62o
	h5OL3EFt8fiJSpZ8ATeKMfYDoQ1EXaBJMjlQrtegpd/gH/N4KVwdidfrHCJpTAsKMJEl8IdU8yC8z
	xSaDDIEAvu402GvuH18e278jofs9SGyTJnVsCVZn8Nq84Babp02aovwkWUUfdiPUoiMRtU4qWXorv
	TQVXZU4E/NrfSUBpY5zCNzlYlkcvLoxD72a/bFNZSoClEJfIsDQeksZ40CNU1/h36FHo1xjxsd7AF
	0gkrIG7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWBhV-00000009lFo-1yxm;
	Wed, 25 Nov 2026 12:02:13 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWBhR-00000009lF4-3hKG
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 12:02:12 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AP9mQiD3764050
	for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 12:02:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	i3jYSnSdn2u/GLu3Pa6dvx+oEPdp+Zst7Dskdp50SrE=; b=FWZlc+cDremacKft
	cqyuED4wIryfBVbpSPhjMFZ/b68Mrl3eIGreRGL6BWues1c67G/LjonhsTQi9Ojj
	pv1NENGBoJtxsViOjN6OWXfWH6BlHdzIQGTNmfyFu3xVhHUvYODgvFCfClQBwXV4
	+MKg2zUFO5uPTyydfqBixUp6WoluO9SjBG/r2feDeL/JV6+NNXF/BL7hL2eqPI19
	Wgs2v8cyhsnyzNJujss6cHH72c97N/bcIYIeCdYqxW6h9nvCLqPyb0ewOA8HskSB
	CfNAfEvJwLihiHbxVQMfuZ/Q2pGI8VvLc3/RF8BIvoM1BMGWnpnMBqSfVMVvRHDn
	IjQNww==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j5vv2rp22-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 12:02:08 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-5ecdc7807f4so257885e0c.2
        for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 04:02:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795608128; x=1796212928; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=i3jYSnSdn2u/GLu3Pa6dvx+oEPdp+Zst7Dskdp50SrE=;
        b=SiMQAhQhpvrIfG70vmF/SeypV+s92SUvHCOtA8LAVfu+2+GDsMzJs+msG4QVISNgAL
         ICNGt/11zD8FosSpljnDmaiXDVb8boYP713rgKJ+qRsoDFX94QhfpmenxB5o3Bwlh401
         RJ1TQgrqhtKc9ulIr5wmGmoQ1cSHL7A9e+mCwdE88SgplIsTGtyDLrS8R+wPTQUGPa+E
         QGb4/tCaY0nh3e0PNTp49wkKDBajaXQz9MI13KgZqoixTNpezkiUvyGIBDyYrFQgkc98
         o6tAg6QQLXueiPypsM6bfm8aDzNmPaI85D0nAkNsggwTUWKXHKb0EZHq4ESxbU+UbR/P
         dh/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795608128; x=1796212928;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=i3jYSnSdn2u/GLu3Pa6dvx+oEPdp+Zst7Dskdp50SrE=;
        b=f6iph5PlIx5G6EPGtXa/P3r9H3yzFwAXC4dspEid7qx0D1VCVQSSihV+lQ91D1n+lA
         IpMHB6iBDDTT9lDWvy6BmCM+e/vMxUkHZQuyKJ6Ydg1CKtHW/hPrSFWzburXm8q3t+7o
         U+y3osdyC0mVtOZMq8ocJ7sLXjbHUals0Uq9tuP6C/21Hp7Infc8L+AzGT1oB7LL7xIm
         szekND/L4zXjP18sv05VoGnplzVqji4/uUWl4nhSlY0Aqf6vHpVm/x0srg2E6wOadim6
         gtO840WFKVLIsmpwVhaP2sEtzezlLK7p2DQ5XuOM0h0Ay4jRoqlgdHxIxQIxYMnlSri+
         E0zw==
X-Forwarded-Encrypted: i=1; AL+hErEWOTJnj5v3rLaZh9LWv1PlIRMuVAHiDj5kor9fpsnsURYJYjL+BUwQZSt1nfhbFwHhRWPWnMrcMNw=@lists.infradead.org
X-Gm-Message-State: APuU4Z8M9aOz3RuET+vlBJYHqERxjQtzvqNSGBszfofEbDHS57NEi+Pd
	r7+mYjFJs7swNlpwOE/2IyFbTCaUdHaKif5ZrOvfgZmvVaMWCU9RooK1DXKfy5v+H6nF+NyQQ9m
	7zvplg99N402gmDOeK0RMUh91Z/8LP/PEBWX0EoHG82TFWmTXd/wrq+WVYCekiu0AwRrb
X-Gm-Gg: AZFdTZeXz9UGkoLEGTdrkCt+MrdcxzAzyZtyaGc5n1sIBjUQcXJh0BBGmLy7vhyp5VS
	X9gPP9RCmP6GkHbegGZnLmqS4t5413Yk0xVpBH218OPatwkJg/nLXE+HXqNcu7775MQrr5m3S5R
	MnbO5MFAM0AeBuf3wAv+g0yPkSwT9cj50gUaLNfjr/W8LwmpyuZ/d5GeizfjjSwRCxiYcnF9kSl
	YIjhz9LU7+KaZz3+HyZmVDESusJsLH9tMQhH9DrTk+Q+H3hIjcQJC5cjIB7PozOgnxstSN9b4BE
	PauRU/FO7bd/r6Nk9D23rx8gOka1xi58CbEJalWfD9ExeYMJsRE0S2KR1XJ673Gx7Y33nSEyOLB
	6XlssZMl/c7mtTVWAkxpijeASdBll9uf16ozl3Y88drMznblLeeZ19hKBtr/7DxI/oEN40eI=
X-Received: by 2002:ac5:c00a:0:20b0:5cf:ad27:3a67 with SMTP id 71dfb90a1353d-5ee8af8d7bfmr11581622e0c.5.1795608128025;
        Wed, 25 Nov 2026 04:02:08 -0800 (PST)
X-Received: by 2002:ac5:c00a:0:20b0:5cf:ad27:3a67 with SMTP id 71dfb90a1353d-5ee8af8d7bfmr11581553e0c.5.1795608127342;
        Wed, 25 Nov 2026 04:02:07 -0800 (PST)
Received: from [192.168.226.72] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c513acff65bsm648949266b.4.2026.11.25.04.02.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Nov 2026 04:02:06 -0800 (PST)
Message-ID: <e1b4fff2-d7f2-4647-bacc-df55343031ea@oss.qualcomm.com>
Date: Wed, 25 Nov 2026 13:02:02 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/3] phy: qcom-mipi-csi2: Add Hawi support
To: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
References: <20261125-hawi-maili-camss-v5-0-1483b7f68dce@oss.qualcomm.com>
 <20261125-hawi-maili-camss-v5-3-1483b7f68dce@oss.qualcomm.com>
 <15cde6af-0b9f-4a0f-9d21-4e5ca9107a67@oss.qualcomm.com>
 <e93eee16-df8d-4d49-ae56-3e6ba9c31167@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <e93eee16-df8d-4d49-ae56-3e6ba9c31167@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI1MDA0NyBTYWx0ZWRfX0PlQiUQxJKe/
 7GOUOu3JJpOhsCAIGMFhXOwE3rVWbmbM/72vPdbjMptykt+QhTb2TRzvS3eaydlxGxD7P8SyeBf
 9hHYzpNg6C6tYr1sgYerBX+I9UqKzfs=
X-Proofpoint-GUID: _ryuF4eXhXGxJp-5TasfY0qMt9QUsMc2
X-Proofpoint-ORIG-GUID: _ryuF4eXhXGxJp-5TasfY0qMt9QUsMc2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI1MDA0NyBTYWx0ZWRfXxgWALCWdca6O
 zMAG5sSfnHQITMMUXH7ITOKChqy6pimN1vexAnLd2cTAPQYVv+2HL10z2hW3HdOXBxtAhtzFi8h
 RRxNwgLdI3f2HDqTcxCr1kWapmjGaOCJKiOAd1jCpmUVfcaonN5xlbfcj8xBhHUUr7ugfxNB3a5
 IldpmrqK+XavCZffIRjPnPdb4ERfCXGLkQuPjYBdE0bktjP2dU2+R3x0TgY8WQBRVD/msu6beHN
 P320LuTLek+bANq+9jkzM/i4SgfrYOUbwzSohyoUYYvqMRavBfot16SedJnyddW4bUTaBcHdxKW
 pUvc61944xaPjxlnqRBuS7FmgN0LLgIjncVCd8QRtzlhFkWGs+W0N3qNF9vLH497Hy2xxEkSZ4u
 nTDhLINGBPxLvcQUtcgIYvWQ8MbSB0MlQySi08en0JdwR0j9+otJXiJlhzQ83ENboGN7W76TR4H
 uaefqSq3vc8dECdfoww==
X-Authority-Analysis: v=2.4 cv=A/z5rKWG c=1 sm=1 tr=0 ts=6b06ce40 cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=yOYrsbgnHfbpD3x4ck8A:9 a=QEXdDO2ut3YA:10 a=tNoRWFLymzeba-QzToBc:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-25_03,2026-11-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 priorityscore=1501 impostorscore=0
 suspectscore=0 bulkscore=0 adultscore=0 malwarescore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2611040001
 definitions=main-2611250047
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_040210_979617_50587CB8 
X-CRM114-Status: GOOD (  15.91  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 11/25/26 1:00 PM, Nihal Kumar Gupta wrote:
> Hi Konrad,
> 
> On 25-11-2026 16:23, Konrad Dybcio wrote:
>>> diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
>>> index ed40934d67eaeba0c6ac7ac75324ac6292fe7d9e..5d91303e0df2e8c5bca3ea8fa2bb831429a8f1ff 100644
>>> --- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
>>> +++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
>>> @@ -162,6 +162,126 @@ mipi_csi2phy_lane_regs lane_regs_x1e80100[] = {
>>>  	{.reg_addr = 0x0c64, .reg_data = 0x7f, .param_type = CSIPHY_SKEW_CAL},
>>>  };
>>>  
>>> +/* 2nm 2PH 2p5Gbps 4 lane DPHY mode, Kaanapali table with data-lane CTRL0 0x8c */
>> nit: 2ph and DPHY are synonymous, if you rename the struct to something
>> like lane_regs_hawi_dphy, we no longer need this comment.
> ACK
> 
>>
>> As for the override, if its meaning is well-known (the difference is bit1
>> being set or not), we can add some sort of a booelan override instead of
>> duplicating the table, maybe
> This is not a boolean difference. Bit 7 enables PGM delay in both
> values. The difference is the programmed delay value:
> X1E uses 0x0e, Hawi uses 0x0c.
> 
> Since this may vary with other PHY tuning values, I would keep the
> SoC-specific table.

OK that works 

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
