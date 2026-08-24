Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E7A6C61CE2
	for <linux-phy@archiver.kernel.org>; Mon, 24 Aug 2026 08:59:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JG+7JjHgYQQv1XXbpI9C9t/z9EqcdzlQC+pPGv9PGfE=; b=nqpNJ0+G74gkPZ
	frEKL1x3XIBemv2SaUx9cXOgpjrmZSW4G75/wfug/PMFkjWrmV0CYrANGxk1F9H4U90cMYmcD6VUi
	8uKwByuF6Pt3U85nBbv3iDV2tA0HwFtLJWPTku9CbvJ4r9J72pDL5QFmA3Q/RxepKCOtjmb7obTbM
	ysvYNpQU6YX0hwJPzZor9mpXdmj4Gu9EyuRegoq4n1KGRCj7PlYDmwwYs/hsl3RTX8K4NRqAKyBkM
	SEqLeDSnjtnCutigR0EqleohR+psAhmGwNEU+sLG93NJnNtGJta3dwBuD/PwikVV/UcX2vqoq6CuQ
	+MXHmAF7xLbXYCp25k8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyQWs-0000000GFB6-0tbp;
	Mon, 24 Aug 2026 08:59:42 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyQWo-0000000GFAl-1ZDq
	for linux-phy@lists.infradead.org;
	Mon, 24 Aug 2026 08:59:41 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67O5RIaU1008546
	for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 08:59:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	V6Uj6C5D1+nrV76LvOx+T31xK7JPMs+/Y3X09dKPsuI=; b=JyOIpsfupR88VhDZ
	JoxXevbOuacWGU1AB84hVVd/etDDKXD7slDEZ9mdh4JxcIaVrGmf60m9a3PlMdoi
	Eo0Bh5a19QkpNJglfjPifGUWAPEjchlVXNtIDsLB97t+NYDNhp9YhE1IZvbCtKKn
	ALYMZh5wCTlUrMsyD6WWcpUP1u1k01KCt/A7mw4qiQpjyKhW+qiUZs/N3SKhbO/D
	pDsLQCWdM2UXH65cM60UmwpW9D8/+BlloDGok+TG93DrI/6e+/S4w1//DU2wm8kr
	aG57QrMH1mUhU6tbcERPvmcM2LO/AN2HzfiG+rvnEk0sVtG5TGZpuqC04WnkN8ai
	XmaHNg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g74xhe3hq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 08:59:37 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-52ddb567146so6875971cf.2
        for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 01:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787561977; x=1788166777; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=V6Uj6C5D1+nrV76LvOx+T31xK7JPMs+/Y3X09dKPsuI=;
        b=dlHkIy9yAKq/mMqSaSrg+TTDbkai9dffEIM6APXiaHRgqVOcDyL3MO08ugWT/amsjb
         BWO4MpWPkPWqyMErdZ9TIkMrvF/z/Rt+CNJ/rBJMllW50UQP33el5lG+lNwZb+qIXMp5
         PZEO6ho5yvmYjMNBkCQEu/cZeYJuoOhXylkZ8M8SBfF46MRzYKpaSLceA/0BR/4L/QUT
         6IMUli7sEshMYpxEB29KppC1z53Nl9mLY5mB+lm5O5DRHxu5teLkIKEQeg2ub4KfkTD5
         ClerrfknZiYChdrKadjvSD7vC0F9tR6F4BOJRS9+ttdgqKOE4+QHigGXfTXM/j99BQ4W
         K40w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787561977; x=1788166777;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=V6Uj6C5D1+nrV76LvOx+T31xK7JPMs+/Y3X09dKPsuI=;
        b=eJU7Iv4+ZAk6nuUZmD4oc75TL3VIl28xVp7w7z9iMtP8dExR1smyh3MQ9P3gBdMshq
         1yD1Q6ft66GOa5WsrbWPAyS2IGLwUrcrgH8LEM9htNJxh/YxQgzvZrXvjngm1I3ug9IO
         tE7CK7yCQWaLe4nynBqz269QY4Cui059VSrFRoFEJOowuQ07buJ5MOXNllY33LPLulOv
         tSKGnYtLYXBNKsfxEfnMDgdo6dLl0CUpwnPZeE8gfisEcL43J9Xbc4hmFNUSC6GgPRNK
         qX2ErPWTz+580lNUapQQSmzZp/czQVN9k33Z6BLzLYqUkNPahMpoION0sexwjqh8TR82
         OSlQ==
X-Forwarded-Encrypted: i=1; AHgh+RreHLknIWLCdM7P7MYM1mWRCREA0ZH0BkmWS5cCK1FalCJbX+7Vs6zA4xTlwsEKLCeNBiQwkAfC284=@lists.infradead.org
X-Gm-Message-State: AFuF++kWasMGw8on3A2m2L+scLsPopkwrDV368G88Nyox+oMnjLgBYDv
	ClTJmp2JOoaO+9Wv81Ur/dKpEc60s4LdFp8u8pPL74EPt5sJ5+XW9Gwu3qBPHjkLs+YpyuS7xmJ
	bb6TzHhl1HmHn07JqPptw1yR05iy9VNik6Xw5IOR4DBK9fSjtf1e8TRX4gBz1ImEYcRnm
X-Gm-Gg: AR+sD13wTlXcylM6l/mN4fMT63B5asEe2AasFux/mQnIYzi3ShwAuGqKod2dX101zN2
	ia4W7V1N7JazRh99KJGVO4zsVkBsEP7I/5ByswalihTsfCkJC4V96bOP80N3kpbSs5UXSD9dPNV
	LcLaFm0twDuQNoJRB6np2YgVMRmzEmjrLj+yYAHov7SOXAiY+M9yoEX/48l06BEjQzx0sPg0Ve3
	KWRajJ72ws9NzCLrNhbBiPK0gKbhkxNV/78pMExNKtRBmx5+6IKW1OiQM8fCVmYf9kg7n1X5wT9
	3FWuO3DYhEtwZeOhxPj9DirzbDfYdTXm9YXH1Gw33/U2w9zSUjzTdCA8xHKPT77ZaD0QsDWW5Or
	0k/BbQ6I5PV/hsnlmZFpXXjjM
X-Received: by 2002:ac8:5fc9:0:b0:51b:f9e0:87b0 with SMTP id d75a77b69052e-52df56ad290mr183183241cf.2.1787561976953;
        Mon, 24 Aug 2026 01:59:36 -0700 (PDT)
X-Received: by 2002:ac8:5fc9:0:b0:51b:f9e0:87b0 with SMTP id d75a77b69052e-52df56ad290mr183182981cf.2.1787561976582;
        Mon, 24 Aug 2026 01:59:36 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c249606bd05sm1095582766b.2.2026.08.24.01.59.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Aug 2026 01:59:35 -0700 (PDT)
Message-ID: <8e175474-1275-4287-9101-1c54afdfcd09@oss.qualcomm.com>
Date: Mon, 24 Aug 2026 10:59:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 05/14] arm64: dts: qcom: ipq5018: Flatten usb
 controller node
To: george.moussalem@outlook.com, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Praveenkumar I <quic_ipkumar@quicinc.com>,
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
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260812-ipq5018-usb3-v2-5-8f355d7ff0ef@outlook.com>
X-Proofpoint-ORIG-GUID: IT2xNocUlqnsqOG1gyRidKlgucMh-tHD
X-Authority-Analysis: v=2.4 cv=GdQnWwXL c=1 sm=1 tr=0 ts=6a8c07f9 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=UqCG9HQmAAAA:8 a=EUspDBNiAAAA:8 a=WWQFUNGd85j635JlVwcA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI0MDA3OCBTYWx0ZWRfX1HtTEmB5slnh
 a6mEEkAqVFwkrWzvM/1XdpEvnb8vDnHtjJErsylEWCXI0h6KiwL8YtOJGdBe3N0XqqofV0oKi8x
 N7VONSaRRs/2seAaU3FCJl6d9pJyr7p8iCpOuiVBl2wcsgA0QIm2Hw2jLHwfENbtREfzf1OwNA0
 0H5VxZv/CJCpYrqR0idZXfd/+srBjZ8ex3kYdU+mZXISUVCYr8AOyKbsPZBZ53ug64Rqu1aX8X6
 nhHFooFC5FQm0uOHX2stnbKcwir+oH8xOK2M0kQNYy7vJfhwG4SRoA2KLdThx8oi1xw5gQbUEDf
 bFlMjAEEV5m6DrkzxBK8Z5s9thwe8fHclFaW8Ue/hsnttwmnn/jgYkTEMHrmNODXKVt76OYAG84
 xRwhktwLwVcD12JEmuT62h8DS49h6g84dFcXtQeQxvMBytWjZTcrDlVB9U1PQHzXJMzC/VsbBBV
 41zFwXdjZivKA5LKY1A==
X-Proofpoint-GUID: IT2xNocUlqnsqOG1gyRidKlgucMh-tHD
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI0MDA3OCBTYWx0ZWRfX7T8yFwYLiAwd
 1So1Kd4Mo7KtNh0ZZR0PL9lxHSbYlBwSm0nR87aT7KeRdyHdAz1HpDJxbUSBW6ib3G/CbPxjAC5
 3pLW+8eqI5DravAox48oY6zYX8E6u+w=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-24_02,2026-08-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 clxscore=1015 priorityscore=1501
 malwarescore=0 lowpriorityscore=0 spamscore=0 adultscore=0 phishscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608240078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_015938_579995_F7C85B50 
X-CRM114-Status: UNSURE (   8.84  )
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

On 8/12/26 11:34 AM, George Moussalem via B4 Relay wrote:
> From: George Moussalem <george.moussalem@outlook.com>
> 
> Flatten usb controller node and update to using latest bindings and
> flattened driver approach.
> 
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
