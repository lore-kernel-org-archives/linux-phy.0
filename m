Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D11ABD711D5
	for <linux-phy@archiver.kernel.org>; Mon, 22 Dec 2025 10:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GMMkgizYKVN74xMZow3JhKQgFuRmsFbRP315iXsgwoo=; b=ENMWRx18r5ICC5
	7F6jFtvJVXgWFVEP6xtYWtK1X30zS6e7NqK5VRCVMmYMLn+A6a8hV4ndFL75rg1IIuDEl0asTqU4V
	6v995D+vOd2TjdCVRCt10mq7Dr1U4meHjXeAFaxtcKEZLaS7zCqkR5maj8WBGwtlE29caNIPq72Lg
	462EVyfgou7VEjSN6nPgmog5/FIDQNTnOu/W67GOUAqIuRT+nPcx8vuD5R4wxVKhB2OW79V4+VeJm
	/Z67otrla8H6h7XXH87nhJq9WdynR3abz1jWqaETtrKjifeiuaJwNlWtScfbVTKYFLB3pYhz4WIKz
	hlYjlKxq+2LGTt5y718g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXcs6-0000000DbH7-0V3R;
	Mon, 22 Dec 2025 10:10:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXcs4-0000000DbGn-0EA3
	for linux-phy@lists.infradead.org;
	Mon, 22 Dec 2025 10:10:33 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BM948Yw3964176
	for <linux-phy@lists.infradead.org>; Mon, 22 Dec 2025 10:10:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Zq50Sq0ciKk8DmE/W8JVLSXSe6FrFYQ0P4yxO//qdV8=; b=VEpA52Ej2hRgcVWg
	nO0R1gXMXeQVsk+9T2CjM5rQ2OQi4wWVMrNb8aShbTT2vVAqJY929KDwt9VN12uO
	dRcklMUGYbVPAHXvleeYix/bFCw7jfmG6YiXgCOk6V7siQdn9wlidtEy36QIMyO8
	9fgVWhojV2SMnuvhxSe62STUur3NvlVJNeeO4No4s/oRqvHo0dCLmka/uwWsDBee
	Kd94OpEUiW7dFrb7s2WV/sIDSQ9L8qA0PLN+yk8rqVbllWk+iHeEDz4ansvE2RoN
	h5TgGydSvlJjx/PBapGpIuO9odNDRVrXRRHfrXm5MkRNiBmXyDoYFF9RXADw8LJz
	wnzI9w==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b6vk6hbg7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 22 Dec 2025 10:10:31 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ee409f1880so9389031cf.1
        for <linux-phy@lists.infradead.org>; Mon, 22 Dec 2025 02:10:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766398229; x=1767003029; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Zq50Sq0ciKk8DmE/W8JVLSXSe6FrFYQ0P4yxO//qdV8=;
        b=h7BhRzDIvxzyAp08oz/GfDP+2zdmMbYJk1kX8eqHWOXB6C5xRkI1UTrhW1rDl4SsG/
         nswluZKdXuVpxg/WK/VthVRg0/JjW5S1vD8szxeD0322/Ktk5ECzRrQqaM4fR/yR/Ti/
         sDZwSGlwFr22k/0xCbHKEMpvCladDS78fGQk0e1+I4EvCYeCkYET7pqfjR2eqiZMBO7x
         GVo2uV/tnHqPea4dZs/JHB2osxIdPnkPuwI65LnO1pwVCsNmVN0X666ygcWxXFnBU1wf
         YAgc/rWO/M0734HIkt53VY78jelIOk2k5ChHL/n2Z2z2uJ1jPkBOEiYvfrjcyhXHfQS/
         7l9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766398229; x=1767003029;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zq50Sq0ciKk8DmE/W8JVLSXSe6FrFYQ0P4yxO//qdV8=;
        b=QGJbYtkcW1aq3Gc6B8nnuNIhXBbOpJyYs7q+W7uM/BO7w/N96x2uMhPAE4qsleL04l
         F+EMW0EfG5lSLDKRlXFm4DPzipguJbNQ/wHTaSYfmqBJCfU9XvvbKR38XtV9AECuzLcR
         6UD9DHSvILvIYCyo5tUfRNyFnf/xvGEw9hbo56+wbGXYRd2dRkxoMA9qbuLcr0cZQyMH
         z/glWyRrLIgr0Fuzrr3wsmyU19edXhqnAJb9ou60ddboOXpdnAT0NcwFmYbzv+ve17UL
         1Bvdx0Swq3w99xcpj4n5ViRRl4L6jYTibUj1qKxah55QggHOAJqM2F/PLl109s76Mbqf
         RRWw==
X-Forwarded-Encrypted: i=1; AJvYcCXdr/ngPnmdEqi3csJe2s/Z/yqifXJgALK6Z7ryg4uy6tSv3zfZ3Rpxum9/7SZm57s6CrvbNfzBFHU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzTxopNeUuyZHp4Y2LBZ/aUvttcYBWBVltKA7A2V+3W/dvGoHmH
	KhvL3JESuTiSgz/L7tumLTb7smAQ1q+cwm405zBYxa28nVYRu1VSN4XF5dBMxkNIfeFLpD7HoKZ
	uucS4HR/7CCcTG5ODsE1zT2msyS76zVvnaa6aj+E6gcp7IDRJpWM92KsBGxzUvZhYIFUN
X-Gm-Gg: AY/fxX4Tzj8qahUoF+eH+ZeIsQqJZPR0W/ECjulVnHMl+CwMufv5nA7ym/zMl3Igvft
	qkDoxYqxw6lA8UjB5y6M2OR/nxPThWoBrTX+UJ1kcXVn4zObL3MCgRtc09fyQn+GIzeLmJL4W0Y
	mveMs8qmbgkhK1ySYmraJoae119Fa1dQFv58AL63DvN+hZB1tBM+blknnAbDi+4p9Kyzpjc5deI
	3FqvbiL+RNBox+Ilfkav9NeUFBTiT7ZIW/sW8bGmMqruZKAufREotUr0LJjUO0KEsDgn1xm7/Fe
	71lZ6U37cjPVTqrhTCQJhdwoahnXtXmB/crsnV5HNKuvbH2KMNWyhfgaWsHb4fB6Me05W9McDuG
	uC+TkOrndewrEFtiTETVDrO65zmJco53Rlt6cI5+QNNYDevV+iwNBv8UTHDLsvbFhYw==
X-Received: by 2002:a05:622a:1983:b0:4ee:1924:c6fc with SMTP id d75a77b69052e-4f4abcb50acmr125305391cf.1.1766398229049;
        Mon, 22 Dec 2025 02:10:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGuV8jrI6GwsxsvZRsBtWpY3d8jh1cRr25s2rnJOJtrkSWKjv4VtiCCKcwVaPh2BOuCy3uBVQ==
X-Received: by 2002:a05:622a:1983:b0:4ee:1924:c6fc with SMTP id d75a77b69052e-4f4abcb50acmr125305071cf.1.1766398228599;
        Mon, 22 Dec 2025 02:10:28 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037ab4f0dsm1047311466b.15.2025.12.22.02.10.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 02:10:28 -0800 (PST)
Message-ID: <068f0183-2f21-41cd-83be-81bd712ab5d6@oss.qualcomm.com>
Date: Mon, 22 Dec 2025 11:10:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] phy: qualcomm: phy-qcom-eusb2-repeater: Add
 squelch detect param update
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Pengyu Luo <mitltlatltl@gmail.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251219173108.2119296-1-krishna.kurapati@oss.qualcomm.com>
 <20251219173108.2119296-3-krishna.kurapati@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251219173108.2119296-3-krishna.kurapati@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: TdT6flupY0uVK03DUmWlkIo_oY3VRpfX
X-Authority-Analysis: v=2.4 cv=cuuWUl4i c=1 sm=1 tr=0 ts=69491917 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=oUfybq1hb7wxsWnyzuYA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDA5MSBTYWx0ZWRfX9dQNe+LApHNy
 yKKXn833FnnwVu+4GxCKh/OVsYVc9j6CStRl88Zrq0KrHWao/Gfsp3p86+2sqJjhK+7+QUw+Emw
 EgTC+G6UnmWiicYzNpBcbDCSQYfT5qJr/At3QjbFaw9Z6xBrxfUxErD8vkR+ZBT4lMq6MG5a5Yj
 3jbv3SCDLDqC51s1cZJfI01y6T2PM+l5PvZzNA/LXDuSbT5r4vC20zwQmVgTkz2j0zZyK8mTmNv
 aH3On4tWhNi7eIC+NIPGFzmD25SpFEGtOpcwz83/HrK6xzkNs7FicLW1kEaK1cv1ct87ZJlMO+v
 U8hE4Q09eYN28WPd5LPgznTGHumiqixHsiWfICJPfL25DUqzMQSBxdi4TNPwcVo2qhwfcc/GOTt
 IXbYxlbJZY2I603L2XSSFHzTPmclzAHjGdmfODbRK4X5nxfl6a4Ih3RKOU/ku/MTLwkMSR98DVP
 LZDS6GI6f5zjMo9A/gQ==
X-Proofpoint-GUID: TdT6flupY0uVK03DUmWlkIo_oY3VRpfX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0
 priorityscore=1501 spamscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512220091
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251222_021032_341757_83C5269D 
X-CRM114-Status: UNSURE (   7.11  )
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

On 12/19/25 6:31 PM, Krishna Kurapati wrote:
> Add support for overriding Squelch Detect parameter.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
