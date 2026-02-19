Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EC60E9A03B
	for <linux-phy@archiver.kernel.org>; Thu, 19 Feb 2026 16:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+mNL5zoqHyxgzXNWudeBjSC6nE/b5dNokhcqU0iImmQ=; b=hH+BFGfHvBCISY
	6JoY0jMwHe4ci8DyhfvrWka+wFpca0vFL9h3gaJK9WhEpywo16U7+JaxJMpC5tDbjh6MLg71GmfQh
	VVZAx/mcnDyiRqNAg7QBbHWuz/bYBqpfnRkGGrxf8kRdgQaT9ycDd3XtYV9q7lFxCN9qOaBIha16s
	yZ6oQjlc333RW6hzsuGrrPPi54HF+LtOWT+iHLaC8OfDYQktZr2WA5/nf9kMvgR4SIvsWxZ2HcDfW
	OQB3y0dB7YTbgMLDyjbV2RcJmE0UvkQWqIxeaVFGMLz09VE8Kd3r9AGsrg9KprLcWgPhK+uHPPwnC
	bBMSWGkCJ2j3Gg0tBHQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vt6pz-0000000BdJd-3SoI;
	Thu, 19 Feb 2026 16:25:11 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vt6px-0000000BdJG-0ERv
	for linux-phy@lists.infradead.org;
	Thu, 19 Feb 2026 16:25:10 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61JCSA6F3077573
	for <linux-phy@lists.infradead.org>; Thu, 19 Feb 2026 16:25:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	p0TSlaouB0APM6wseQe0F6DwwPYAdSpgUfOura+QpXY=; b=SHGwMGDAOarzzNvm
	YsYG9qUxImAGgg4SFwbfuMwG3M/YfKxSY9xKBd7/b39Z4ZLaINxOQ4YU2FgIjhRg
	RaScX9sjXPaX37yBr1qMQHoZQrpeMxQXxr5icJKR0ib3CAOyfeUCX2G/M00zQLdg
	Ku8XGCn+tGyaRFwOE2DCd1KozAAL4/1JmQXZDjo5ygIlcije5dwSOS6K8R7/oVTH
	m7eSYgqVJb1+Khm6p3hu2xFuceDqL9TeKjW6T3uElXU6spnHaMGT8nNFa0F3ATEG
	nuMpXoCtbLCXtgqchJLPdWKZe/kbLNBfrEveWuNKkjZwfKi4Iun8bG5ET4skEnWw
	4v/QYQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cdrk82635-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 19 Feb 2026 16:25:07 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c710279d57so93191785a.3
        for <linux-phy@lists.infradead.org>; Thu, 19 Feb 2026 08:25:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771518307; x=1772123107; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=p0TSlaouB0APM6wseQe0F6DwwPYAdSpgUfOura+QpXY=;
        b=kQ6HjJWmNQ2166gAGMCHgD5dNagsAdEjDqJAFmZn4nZCk6kFYfIsFrMlNpO/fgOZhp
         zvoybkQyUuPcumxCz+b7PMaNL0BPm3ECnn45Umvbr4HPsqLj4LhbRNFYMsDjHLHeT/EG
         bl9ast4BB75heA5PahWdiHMUlXK6oDwtxRYBuygNAR/sJqMGRX+BK7X/536JPwNfs8e8
         rhbP93X8ujyFJrC4REKrxIVNB3JTtPoP4RvqwnEIjAElrWOQBwv3fg2dvwq0XSRLI4uC
         u/TihqrO27IoKULiarDFgBggjjXJ7h6V2KpI+0It1Sz5FNA1/Npur6o57aRujoNsIzC6
         lTdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771518307; x=1772123107;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p0TSlaouB0APM6wseQe0F6DwwPYAdSpgUfOura+QpXY=;
        b=ffnGqp8iVlML14x2Qk9HIiNhnYl+cI6v5E9wzxoSkHAVB6vfSfGeQB5KnO8oAHK3RY
         YgiFrPAEkfOcnpRiY/TJ8gRXwIfnPvlnmf1KbpEyuhR7digoJQ+JL42E5wkbT5AWcwFf
         C3fOxQ+SzPsSV2aOoFKn7cIRc05CYYTlK02Bt7BbgWGG1ghC429OWIS2w0mvvQPTLHho
         +ms5Sq3N19FDWzRYgCxXjtYcTwoLof4OjbhU3ytlDJAecvtkGB9ZCd6+5z/LApyHo/rt
         Y8bKmnTDzEE0+Tp2rKIsEhba7Ji4P2s8GuoHTgptTOvNfxnAu8Tax6RlTTh3tS/70DRC
         Fx6A==
X-Forwarded-Encrypted: i=1; AJvYcCXmMzMs1ycL6UB6Z65aGYHiy7KPtfpDWwnQ2G0e2V1MsacytPB+wEjpAlmwAn7O5yWg8c+pRhphJiw=@lists.infradead.org
X-Gm-Message-State: AOJu0YyrJABQ7PfVAItAp/v89X+ORZ4/+3kA+EPnqK5b4Qryr4kjQz6s
	JzCfqMy418hDc6xblZ5Is70YhSwNSlWmPOGSL5k5ns1oFUoNxzzuZN2HHhZSInl+ObPggUa9iEs
	EU31jmK/rWVxccNihe0796D1ZYTnygonJhUU0VM/V4awF0Ys7FzyWI5rlN6mP6uriIRt8zn+0fT
	cu
X-Gm-Gg: AZuq6aKV9TDyHNFY9kzPDEqzI/RJUq68JqwP+K4f3PA/A0OmHOKZbYgIRpPYTSFuKyo
	92a4PTh6st/es8Kz2D5ZTK9faXlhK/6TH4c4ZQdP4Bd7sST8BzE1eD2MqV2Ypm/0r7+zhjHvwAE
	+f/lFIcDj40SNkwBGSmkf03xScXO8hcnuA4dnI7fMabJqmd46tFW6PBDf85ZAujFbDTDLnb3cGI
	QGPKvpB21MFIg3G3KOFc3wOFkZ0GayIHLwCf2rsmSYvegRNh3EejbQ2/1IY+IySQ5CO34qld5du
	1vypgBFMxJhU7cbzzooP175oVaOr5kD2FZgwGUm9shiA6yNd43O6q9q1FHLXI60V23iVOU2p3rd
	XAExLjy/J7ZTSmg6YmCl+C3SIz7xojZ6YK1BmH96fMrq+3X0Okm0rMuzZ1kM4me2qurBQPj/54g
	RNXJs=
X-Received: by 2002:a05:620a:2948:b0:8c7:17af:7ae with SMTP id af79cd13be357-8cb408b846bmr1985068185a.7.1771518306886;
        Thu, 19 Feb 2026 08:25:06 -0800 (PST)
X-Received: by 2002:a05:620a:2948:b0:8c7:17af:7ae with SMTP id af79cd13be357-8cb408b846bmr1985061985a.7.1771518306135;
        Thu, 19 Feb 2026 08:25:06 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65bad3e356asm4013389a12.16.2026.02.19.08.25.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Feb 2026 08:25:05 -0800 (PST)
Message-ID: <63dfd40f-9b13-44a4-9f68-cd281b1e0d2c@oss.qualcomm.com>
Date: Thu, 19 Feb 2026 17:25:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: document the
 Eliza QMP UFS PHY
To: Abel Vesa <abel.vesa@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Nitin Rawat <nitin.rawat@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260219-eliza-bindings-phy-ufs-v1-1-1635e7b53049@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260219-eliza-bindings-phy-ufs-v1-1-1635e7b53049@oss.qualcomm.com>
X-Proofpoint-GUID: bSrTxegfpvt7h5TqzRE3MNNm0aRI3Mhx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE5MDE0OCBTYWx0ZWRfXy0fbQhf1mvYt
 HVxoFtpWwcAb5wCoBd7bvcTl12SPuLvfbhv5uWn6ExYwbR8Yy0uniK6OYI9PeqX35LmjkuxoD5E
 +1wgHaNaopVkz9qgYPKL1mVHl193xbqZOFggCR2rq3m53bkrXhXIcD4bN48++Q0Kn3Q7S9ndATe
 /F5/Hl+LlhxQM1jT5buFpr6A4C9DHmOBeHGCYhcpmQUSXHWkZc6AqJU0haMvMDoH3WjxvvSM+vJ
 u6gF9+3n6Qcc5I/prDsglbn2PtdTcWT9HBY+7SRDX4kBA2SDRLi1sKfBp/nUWaAYIKv1wIn5LN4
 dv604L05U2yXA7OEZuACeTdv9NE/Ixocb0tvo5bX0XmKkx4UsXKG+jmWlRHuO444U+TjK7Op0bz
 OHPiaeCqViyZe6f41FwXWObCgj3fCBkQekbnKmWYj2c4kz0ocpMRIHhLJKVh3ZBGIlmjWbd8meT
 yOGCK6uz401ZVYDySbQ==
X-Authority-Analysis: v=2.4 cv=MJBtWcZl c=1 sm=1 tr=0 ts=69973963 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=M5GYClEuJsCSwWFCvNsA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: bSrTxegfpvt7h5TqzRE3MNNm0aRI3Mhx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_04,2026-02-19_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 phishscore=0 lowpriorityscore=0 suspectscore=0
 clxscore=1015 bulkscore=0 priorityscore=1501 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602190148
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260219_082509_226990_CF580D72 
X-CRM114-Status: UNSURE (   8.72  )
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

On 2/19/26 5:17 PM, Abel Vesa wrote:
> Document the QMP UFS PHY compatible for the Eliza Platform. It is fully
> compatible with the PHY implemented in SM8650, so use the SM8650
> compatible as fallback.
> 
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
