Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C10A5C83F07
	for <linux-phy@archiver.kernel.org>; Mon,  7 Jul 2025 12:39:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2gMXFYmEAD6ZApYB7IReKhKjIN8kCyO+6f+PMJM4p3w=; b=N/aAAl9otm0Qf9
	wXf7udbVCyqYYwbEX060TrmNfDt10mx1M+Ewfg2czsmQ+LPPP9iG7xO5u5Ju1POd06TNssZTAXklV
	1y83rqYubRosxQwCTsVUGba74JD6YLGEWrO5AjWo2YhtsmhPNg+4gTYO5l7GG/hx+tOK2Z8CQ/Atz
	kNUIMS4Gs+HywIlkNRlLN20VtWNrS7+MvNtlsTouEi7nJRzjWriNMSI5Bq2X5eXou/lmuMxxjckR9
	HGZbRy5VdokVU1Upi9pQ7tp9mDwVYs1hyk+AaI5fUIf2s2iRr2kCepNwkcrN0d9qjVAIXKTGCxlcC
	ivPRsd7/fYGU557dwoAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYl8P-00000002RUS-1mxP;
	Mon, 07 Jul 2025 12:39:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYkMq-00000002Ks6-1VqU
	for linux-phy@bombadil.infradead.org;
	Mon, 07 Jul 2025 11:50:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=BtKyfxTPk8AIeJsvPWCjewsjZ38SDSGkBHzkUynmy8s=; b=d6oMlzSBLVyjgNo5pCzX0pKUhO
	B4UQk6/K1yPNbModV7mmSNp0wT3gl8AyLEvHdSQXHScbwNIYzcMkQ0e/OzBDTNbsE3vKxSIaYRoNX
	JWruMwfiCCnZmYKsFms/fIAG1crR6LgXojmKdjNq9PWSJdJymMRpWhG448rzZZmajAGT9ou5BARPH
	0ggk81UNSegPQVatkLeFD0Mxkp66PvMFEB/1sVLXn04PYPT07+BGPWR7KwEPNYCSy83rgX22QVBc4
	gnAu1Wy8Y+I9wHhWgzkCVjlEmBkprgcSx4HAX+H1lvdAY1ajBvEHsKYNzql4WAwj2T/KyggriX0hF
	h7Zh61DQ==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYkMm-00000008U7U-0vDr
	for linux-phy@lists.infradead.org;
	Mon, 07 Jul 2025 11:50:39 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5679J8MO006256
	for <linux-phy@lists.infradead.org>; Mon, 7 Jul 2025 11:50:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BtKyfxTPk8AIeJsvPWCjewsjZ38SDSGkBHzkUynmy8s=; b=W3gY9Br6OL0Xdp8v
	BwGPVagXKkoR+Yv5cIBk5G+LVYbTgh3WyQuNmP0wDi/vavTGxHdQp3K5MJ/3wcgG
	dAR4WxmP7a6jcNrmPvoYf1BlGS4T9guKIxdNXSpoPGEy1JA9LY/1p5h55u7du1xn
	uha5WNKCXSuWYoKT8ocO0BHbs3Ji3qZQGUx4KKRyjofWiFz6PcLRgPrGs69Q1/Sf
	TiY9gMMx6vWqt6Gu5LzZ2raA8mWtfC/D+w2JLPffHqPYi5Rzp6QWlhRH1nqLIGRw
	5wYKuDH4SeZluji2cX/M20fJccpbE5hC2TJHkEZOPZlxkqwAkd3eB+p7D02MYwYp
	i9pP8Q==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47psdqn3wn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 07 Jul 2025 11:50:27 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6fb030f541bso12585586d6.1
        for <linux-phy@lists.infradead.org>; Mon, 07 Jul 2025 04:50:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751889010; x=1752493810;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BtKyfxTPk8AIeJsvPWCjewsjZ38SDSGkBHzkUynmy8s=;
        b=JnDCcSmoTqjoRImuPzxrdfir8Gw9DzIh6Ope9WZhx6JFWrGpPIjmDApWNhDOMEHHrX
         mAwTmsz2rkzCo59lRiTEaUUzddsQt8pfoKGENicDlqkMNleO1P+GNaaXo2oaXQ02YG5s
         A1LNYHpw40XuwZflg5eQr15tlLm+YjYny0fam8nFllREzRFGnK0pptUNI5afmaCOM1ol
         tSOT70xGVaNjoNEKEB/cefeOXzV7nhRzXmM8TZ/g2jqhxDFQngpatcWkEntLCmer60oQ
         ViasA3oAhxWs0S1cJ2VTtrSXA3CdGH59WYrDNC/y8JsuYDCZCT9DzXzCSmBykGbaMNTz
         idqA==
X-Forwarded-Encrypted: i=1; AJvYcCXMgpuVz9L27f0XHFXX5vhmRzJ5y9TyhfRBicldtmAg5f68RUbwl1q/hz+nhqJ6IitkJalTG0wFFBU=@lists.infradead.org
X-Gm-Message-State: AOJu0YwuEJ5e/K7e+MGjgVDuxvPU00bTXHoQwcUMKXk8OfDqrQHhMd2t
	y8MoTlhyrYev90sQ9ppgUNq56vwcjt3HJpg7wfO4oshANbwe0QHg0xf1jk8DkRm2NBeTOeOFoqe
	AQ1r8dYBulYa3kdZSNRYk9T4SJYOJ9W6f1Ivb5UpwlbmztzbXhKff9vwETTO8RyLj9LtC
X-Gm-Gg: ASbGncva72uTTh89P9pj1jkleC2BTmK/QNimXMhmlrNrB2SWjG3eJ//8rqjOx02LzM3
	P9prKxNm77VQ1Dy9Q90Jtt030Qvop/ho02usx6mNgB6fY4btP5lYScUGvNbqY98sW71O6RsnVou
	8Ztw54wpoAt92rw28GYZTxTf7Oe8ixr5M2n+UXXGlywceBuSjrSTww0tmMGT6BJ0PKv2AWdnD1r
	qUxkM2wgWBXfEhH5pYHKIJG6niIsxXZmMT3MkRPwVNZuNOL2BvEXMn+xZEkMgHAsPRtT2YLAXQN
	MTD/40gHSP09Z5BfoEYuAx9F8FPRjcb1E9ZtqH9dc7opYgJ53C2mJg4+S6cHaFdN3j3reac6z3G
	7onU=
X-Received: by 2002:a05:620a:8086:b0:7d3:8e88:dc0a with SMTP id af79cd13be357-7d5ddc7186fmr516221785a.11.1751889009946;
        Mon, 07 Jul 2025 04:50:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGJC3Fqsx6CpDLKzAOaBps+irlPhHcFg2khR3/yaBWnK8u7z2vqoG9wXzHo+FYxm5ySpxgERA==
X-Received: by 2002:a05:620a:8086:b0:7d3:8e88:dc0a with SMTP id af79cd13be357-7d5ddc7186fmr516218385a.11.1751889009295;
        Mon, 07 Jul 2025 04:50:09 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60fca696480sm5522871a12.27.2025.07.07.04.50.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Jul 2025 04:50:08 -0700 (PDT)
Message-ID: <20c4a464-699e-4266-92f5-f23f1024e277@oss.qualcomm.com>
Date: Mon, 7 Jul 2025 13:50:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qcom-qmp-ufs: Fix HS-G4 PHY init table for sc7280
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Xilin Wu <sophon@radxa.com>, can.guo@oss.qualcomm.com
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Nitin Rawat <quic_nitirawa@quicinc.com>,
        Manish Pandey <quic_mapa@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250613-sc7280-ufsphy-g4-fix-v1-1-1bf60744f5ac@radxa.com>
 <o2chuy22dls3y3bsjke34z7pnyzap6m4m34tjxswueshulii4d@d5lbcragrbjb>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <o2chuy22dls3y3bsjke34z7pnyzap6m4m34tjxswueshulii4d@d5lbcragrbjb>
X-Authority-Analysis: v=2.4 cv=ffSty1QF c=1 sm=1 tr=0 ts=686bb483 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=FoyzFE0DsDRb6SHPX1sA:9
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: r-j7l92qSMONWV_x3cUfkDlkZOOhS435
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA3MDA2OSBTYWx0ZWRfXwJn4AmAaQXnE
 G4JFy17CMaQoJFA6FM0CmPpWwfpKDLe0XWDVCG4CTDFKi0guzXILesi3ly+ft0M17egtyNP50Th
 FP3HpejGWwdmHats877+/1ve3a4kzO6VagU6UNjS0UIjs7PAq2MSQfKG2cULv/nSrdIahqhsY/n
 1YDj/ESyDjhzk1LeZDPWye/4DO8O7BqFkDvneQYFRs6mk9QGHOQBYILLfsv9rBbk05gniKmoXX0
 dnntG65V1ajS118zP5/y79saVEv6e7824GL/6bhZ6uCgP9cp+mOJ7Ckiz+GYtgMe/SsIdyRrQIh
 FxJQDD5RPyOV+U7q1qXmBJKDoNgJgp+EzSzvs13OiEWdh0jcJRJ2SlfLroZuTN9+GAY2z6/e1vG
 1b8AxA7WH6SGfR3oOuHyVxjucUhOXyOSU/Btc3JJTgiScLGvJHR3WQkL17Q/87J/ndMWv6Cr
X-Proofpoint-GUID: r-j7l92qSMONWV_x3cUfkDlkZOOhS435
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-07_03,2025-07-07_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 mlxlogscore=780 mlxscore=0 bulkscore=0 priorityscore=1501
 phishscore=0 clxscore=1015 suspectscore=0 impostorscore=0 lowpriorityscore=0
 spamscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507070069
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250707_125036_861154_E7E75DFD 
X-CRM114-Status: GOOD (  11.18  )
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

On 7/5/25 3:06 PM, Dmitry Baryshkov wrote:
> On Fri, Jun 13, 2025 at 10:41:48PM +0800, Xilin Wu wrote:
>> The PHY is limited to operating in HS-G3 mode during the initial PCS
>> registers initialization. Extra PHY init sequence is required to allow
>> HS-G4 mode to work when needed.
> 
> I can't find corresponding settings in either of HPGs.

Yeah I don't see 7280 accounted for in the usual places either..

Maybe + Can knows where to look?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
