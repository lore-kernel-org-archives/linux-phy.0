Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A08EC5DF94
	for <linux-phy@archiver.kernel.org>; Mon, 24 Aug 2026 14:40:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HhhCQQgnCi9mq5wIkkucr/MF74WN4dIUdyuFzNpjTs8=; b=gLGLA8i0NHZZAg
	Uo02zbHKcsxRbbenYui+T5Wb2lCL61N6RfVr4R51I9BIKf8//29qpcwN9QQdfWGhkytT+QfPrhQs8
	3dZAhaDZJQGp+r71BE1zKPFrbFMQ0cHECD2298BfVcoFK7UvKHQeCm+K30pHzUKAyUg8A+UVKczhu
	B0CBZ4iSQT3nz4cuNZRDZKkjydeM2PR0I7lusHZES8ykfIrI1U5Js67Z6xwueBYMLTcA0/H87aeS/
	VEmnkXCNVFgt+BH34CW7MeyhAe/oB10ffm+iCzcNIC8IpTNvpvet050FNpXYAcSVaIxJNpLXTiblg
	c0hyClPVt6BIkS+RlFFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyVqL-0000000GoCW-01GT;
	Mon, 24 Aug 2026 14:40:09 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyVqH-0000000GoBJ-40Mo
	for linux-phy@lists.infradead.org;
	Mon, 24 Aug 2026 14:40:07 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67OCv6ZQ2006761
	for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 14:40:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lFSdKwtvN9qDI+3vqSCVFtNdEXjYZVeFXR3vtR6Cuak=; b=X8KOpiTJmaZ9DHMZ
	MlulcRyUEU1yAHwhtOzbhKAzvVu36OW6TTCK6yyDdXZFKzgYdw8JDcgi5DxfP+bc
	3/4U60s9lP/ExjpH0iNnCojKiI6ir6afL367E4Oex/f+iutnOZZIODhTy1CqFdLH
	CHA3pAaXc5ROt26beNAnnxgzhF5gvce6WPHHjlHTySRgVX63BeUjYnmlls7xsz4F
	5faaQhYhhRtjC+D2+kYsb7BT2XX7daK44ZEK2W8RYZYcn/jAPdeURc0dUcjbBBBL
	tbp82Bou+Grf4sukt++hZ40i3loT6T0WDj0IdiKtniV6ATAKPpWAvtEa42qb+Cts
	UIu6sw==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g8kv793cc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 14:40:04 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-744e789f00fso91752137.2
        for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 07:40:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787582404; x=1788187204; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=lFSdKwtvN9qDI+3vqSCVFtNdEXjYZVeFXR3vtR6Cuak=;
        b=j5/z8fonoj0f6wlQjPq6qQY82mbtWCUxYYIBllr7j2YGNp2mQVwEfLbfgoCPZPNRGx
         Y+yajmqxOr+aQz48z5fSiRaMgVeJruqAXX4cdNblNlS3V8bRFHdVbISgmMD6l3J1Yn25
         0VTMDYOepbHSpMFYXeryJ1t1Jc//9SE4vq6Ut+Bu7ayDcm04/UPp+3cxrmnNkSby/xmc
         Fd/N3VOttIsyK03PqVz3VgDuW+fKepHv1wYwbs/pGCpihU26y6KQ+ZV6obM3dIbJah7u
         Z3aR4I7PPTIG2U93AwWgdK8O4ypqsWyRpVhlDwmcaw9WYq4KFwxd7oLHKSxwVhw1wQSH
         DW1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787582404; x=1788187204;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=lFSdKwtvN9qDI+3vqSCVFtNdEXjYZVeFXR3vtR6Cuak=;
        b=OGfw9URk4caFHUPYLJxadVR1z7hrAyTr0jU4+Xa9nOywcXXo4JGo3qMyxkoVA4Ooqv
         X3qTghqfAMTBvQVJd7Y/dVj+afbBSDRE93jElIKgiyTRrqXE8ut3UZVwuOf+nKMfEhNV
         r3dZNmPFroO0jUxpJFG6XpryQ7AP8bjmw/xiC570kO1Y6omSd9WAGQ6EKwWwDoGquXWE
         YAFKnq8VB/fE5wsMSAm5/LbUiQjopePERspsK0tJ56+PzPIsC7uSgZq9/NLPN6yIKFuA
         bqpANH2XfQoSkrFRIwMm5AWn2Bm2Et01cgeX715Fdi7VpTFiVnxI2vliCTT6vVD/MKfE
         842w==
X-Forwarded-Encrypted: i=1; AHgh+RrVdOeu3l/KnkXdXu24bN91O+isqjE9iVYlE86Gz5NN1iYxhKiiVlz9oGXweGRkz4uFB/gSX7TW7IM=@lists.infradead.org
X-Gm-Message-State: AFuF++lqtm38N4rZTtlPX5sH/tigPogNAxOvTHL5HdPw2/A79VVEOVD7
	CrMSMS83Ed99vKAu8fvi+QguILZiy0XQ2VKvXLTaOdgYKR6MD++4n3x8JH16VEBiK4DAwGWtkNS
	cIkiS3S20Yivkfw2Iz2AVqzRgH18I1ug0BAVmDyVYdQXZ2eWmtUfHPUBLnwtKhZG05XV+
X-Gm-Gg: AR+sD10Z9u4CsVh2i9LplUWaHqW7QqBHcr33OMnaAXQuw7QzSuiDAn7nBWnhMq5IcLV
	mY9pzKP5BVQG171MOo3C3TEVS5XO9xIbv+KlDFZ21UahLgWxaYBRKDSM9lZLOggXrR+7hUY12p9
	DsmhaAyWQ3sUEr+hONaKVF6UzQaSwi0xB7XiOn0KnTEmRmwJrTEdCvPPwEw0uKQ2NuIPi/NOv9w
	ihf5Fn9yLN91sHdVixvqnzD2E3ywLAnUMyu1h2hpLb5YTqcLMJauQkjZO5KnIc6VkfW+n0Q4DCg
	1rkGUXYsImE/vC39Xo/Ilsy0az69w8PZ72EQa6Np3G68IRaXF2S0nkWxUXEScYzJvazOFgH3b7b
	ZA6aYEDTgElq/4M0OomkZUKoq
X-Received: by 2002:a05:6102:1594:b0:778:30ee:f44a with SMTP id ada2fe7eead31-77a5f2e70b7mr3521966137.0.1787582403929;
        Mon, 24 Aug 2026 07:40:03 -0700 (PDT)
X-Received: by 2002:a05:6102:1594:b0:778:30ee:f44a with SMTP id ada2fe7eead31-77a5f2e70b7mr3521958137.0.1787582403532;
        Mon, 24 Aug 2026 07:40:03 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6a59e1c3003sm8992565a12.23.2026.08.24.07.40.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Aug 2026 07:40:02 -0700 (PDT)
Message-ID: <6d30f908-b127-4f30-a496-d625e811b8fe@oss.qualcomm.com>
Date: Mon, 24 Aug 2026 16:40:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 05/14] arm64: dts: qcom: ipq5018: Flatten usb
 controller node
To: George Moussalem <george.moussalem@outlook.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Praveenkumar I
 <quic_ipkumar@quicinc.com>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org
References: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
 <20260812-ipq5018-usb3-v2-5-8f355d7ff0ef@outlook.com>
 <8e175474-1275-4287-9101-1c54afdfcd09@oss.qualcomm.com>
 <SN7PR19MB6736BC1B0AF80D243B8C08E99DA02@SN7PR19MB6736.namprd19.prod.outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <SN7PR19MB6736BC1B0AF80D243B8C08E99DA02@SN7PR19MB6736.namprd19.prod.outlook.com>
X-Authority-Analysis: v=2.4 cv=Cfg4Irrl c=1 sm=1 tr=0 ts=6a8c57c4 cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=UqCG9HQmAAAA:8 a=EUspDBNiAAAA:8 a=f1ofXoCs9oobWTv4rbcA:9 a=QEXdDO2ut3YA:10
 a=gYDTvv6II1OnSo0itH1n:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI0MDEyMyBTYWx0ZWRfX+OFZuIVgPkoC
 kVq21vIQlYo5FE3HML1scFYdwgun25NHD/Kaw0FK0P0bV9eot9wUsQUm0ut7TrROh2tilGrJawy
 W/+ROa+adVAn9mzf/bwWidsRHzARRoo=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI0MDEyMyBTYWx0ZWRfXzyN0D3lWZUBr
 9bWmgnPov1zLm208qLiE8/mZUar3QQPW/TZ1NWXj/zytK57NbhEbKd84ouCh2C3cfRJRaGFHpKs
 QJSg4uGVmLZMC/MG2ZU2d+5vC8fLTqylg8cjG3RqTnn259/0NDgvaFFWHG1bCEtW6Y29Mrl6C0C
 NR+6aETm4NKEv4Z0i+Y202J85q0XmA8Fbutj7H2wMlBcME83WBSBCe1g9zwS+tDZi/4yT8FRdWI
 2U/Nbkp+rQx2Xfh0Q+nMp/eFcpmPmZ2awGVaP1eMwVgAKyXh8EfWqJmboknhOzbzR66BwQ/noWG
 awfdRa4VhjI+WFnHGEkUU/+5RytfmQ9ozOvCROdRfljMaLda09XJT+Z0dl0z2xpWmyAjTL9tQLL
 gCtKqc0YnKJtI/8LRVB0bIriRbLIWjJHS4cHn9VxlYHsw4Xkx6VVtTf9++wT8oVyBHbHYZER4Ui
 dBAe9PBOA0TcfZGXKxA==
X-Proofpoint-ORIG-GUID: CUISZTK1KPP6yn1J-NED4uOw1F-82Pm-
X-Proofpoint-GUID: CUISZTK1KPP6yn1J-NED4uOw1F-82Pm-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-24_04,2026-08-24_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 impostorscore=0 spamscore=0 suspectscore=0
 priorityscore=1501 malwarescore=0 clxscore=1015 lowpriorityscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608240123
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_074006_025843_57D24659 
X-CRM114-Status: GOOD (  11.55  )
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

On 8/24/26 11:26 AM, George Moussalem wrote:
> On 8/24/26 12:59, Konrad Dybcio wrote:
>> On 8/12/26 11:34 AM, George Moussalem via B4 Relay wrote:
>>> From: George Moussalem <george.moussalem@outlook.com>
>>>
>>> Flatten usb controller node and update to using latest bindings and
>>> flattened driver approach.
>>>
>>> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
>>> ---
>>
>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Thanks for the RB tag. There will be an update in v3 relative to the
> size of the register space which should be 0xf1c00 to cover QSCRATCH
> too. Do you want to review it again then or shall I keep the RB tag?

Keep it

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
