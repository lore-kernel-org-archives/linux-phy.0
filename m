Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEEBCCCF2DA
	for <linux-phy@archiver.kernel.org>; Mon, 19 Oct 2026 07:25:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fkp0f4JnH99S8WJiI+S2p+z1pFgCMCnp1N3OD0KMrUs=; b=QstKxHbynuXqUQ
	KPgiTuNCB/kkAKIts5kHMnJnzCPBa+trwBiiGwQdMpmN9v1L8fW5w+OuXhdd7QYAEOpqjAyGG2Blk
	NSXOHarjB4ojk8Dr94YysJrvwdQvIneqCak5aeJtAD37Y/AqfnZxEz1aR8YwwrvtcmYT63JmuhgyC
	rySbLsdGns7NgRIuys5h6vBp/PW42yzCOjkvWGhXVS1PxncrwvWZsJajygFBTb4sfuSIoV0a4yQuU
	rkTtts3R/9TrW3+j1oIY3tYW4XddPi8kSMF9wV0SiEpVIpugkpR7kuJ4yeUXQ+ejT7awiBQhMYwO5
	2ihIMU579JwqBgwuYJgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIhkl-00000006lBD-1uVP;
	Mon, 19 Oct 2026 07:25:51 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIhki-00000006lAq-475g
	for linux-phy@lists.infradead.org;
	Mon, 19 Oct 2026 07:25:50 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69J4jNqK2268152
	for <linux-phy@lists.infradead.org>; Mon, 19 Oct 2026 07:25:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MfEQlfKriOoZNiF29x59T585s1PSoDwBql762uznc+4=; b=TNYbOH2Td/6mbw6T
	2/pcZsReh2I2+54kXl6sXTBtpGyTBa3K63+Tk2botHPQZvWalwe92OP8Zn/IFLig
	oVPkDxOk5BKaozNWbHkBWFjEfG5cvPm1D1oGrUI13sqyPuNeECNG1kOvapi9PXmZ
	wXnF4w1VHjPntkM76V8bJj1TMUwi+f/FEqJPkciYb05oDFFIYQu/bkfwlv09Kmkj
	DcurPDVSjlSU+MCWemYH2IgXUnxIDLpkjSSYwuwAc+WLIrNOC0D9Wgm12GX3uhGc
	ulGDQrBDJZTeO/eGOBcONckSSa238Lnmy7o3GIHFt3p131FDOY0STpWQHpfdU+vg
	Ki2xBw==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hc0kxnhkr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 19 Oct 2026 07:25:47 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-16bc6f3fdb1so774848c88.0
        for <linux-phy@lists.infradead.org>; Mon, 19 Oct 2026 00:25:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792394747; x=1792999547; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=MfEQlfKriOoZNiF29x59T585s1PSoDwBql762uznc+4=;
        b=iL2qjcoM+lk9Rk0+2bZd/yrODDB8JuuAZ3etrc7sWhzrcUq9XClHMS3VBqaTp8eD1O
         Uo/hIQN1mBJhSJhCoEgGDwrt2s4o2ycaqfMwOWMtgmFo0IiUTN7npXvGPReYoB90isZW
         LCdA9Ci8Cok25lRzQi5QmZAk7fDC75DfSkqtm6Hn2JZdGnE9HRh37DcpqrYfpl3PgrbV
         HU+UdMzuIk6VQz8Vcq2lCivCsNFcSvy5LeKoZx4FlFk+o+cw0ylE1iSeAuQdiawpvS6Q
         maNcMJrIwpKUiW2QAXcZefvGehOJU1BFWFaoSQ2+kyOVNwlW9UGFXiLYxNa1bjor/abf
         MoAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792394747; x=1792999547;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=MfEQlfKriOoZNiF29x59T585s1PSoDwBql762uznc+4=;
        b=qgVQhuYhRgeNVhyj65H5PzxORWX+rMpUjGbu92URTrj2YOS1dBf4h6Pjo7xIdmHM1h
         Qi7SlmZVUvBnqDK5HZfzvKm5cJHvZWglXjk9Hdj5NvTBHDT0YjgnsDv+lUqjACm+GuHD
         O7kc94SH+3phmk63k4rMnBReznod/mRdhLLTyuimzlj5DBKigsbvXoja36WH/pLcO+Op
         9zDCqL78qMaf5LgASsN2SvJUiWexPAjhiLjHqe9ziskrL69YAlCzZ2D22k9/ooaq7Qvb
         3oz1zkzK/U8aKkfhl7FrfGwFIQFucMQwkOHQI7Mmoq2UoTptZ128f37hC2eq6Et9PZsQ
         zOrA==
X-Forwarded-Encrypted: i=1; AKwUvBw0quQVGlR2+Ji3NfDhUDuCAkprk4miJXo2WgJQ7VpHiBNCrbKTxYrPkWZaOQMgzBBoR2DQBwZBu9s=@lists.infradead.org
X-Gm-Message-State: AFq9FYLh+guTgIKD2en9z6uTpJn9hH92ZNz3bV3JFt7sDfnFLY3YrE6I
	Dczmby/Tld6uRTFb/kHgm0O8q3G7tzZJRFCr3jty8eNOGJA6IbKS9pmAE3A3859zG1kUct6caaH
	BFWy7be0oE7EUIyTY7q2XJDXYRv+zu4c6qb7hSEiJEJuK8TynVVrCcWFBcdKa6Tx/o1/j
X-Gm-Gg: AYBFou1/TrjKyygWmXxDecIZddimUEOOtorttQIbKdI/lD385TrG1ajikMaXp4YoRCf
	JIChesC9RnmXtc8IMebdHXWL02jODJv/mdNMG9QTYuA1PCu79dPmBjt81RSTtI9BQXHfc5QwLRq
	p97GeDHnpzYsDoiYXKkdKNg5srqCqEhINJ4syKoASfjl/ubv8BjWwlnqGvUp3pn6hVdT+7wS+0P
	rkSNY5EKmWvNLo7qkSlzQhE1Osiw/Ymd1kKwYYIxWGgKOlI+esbYi5puYMIPuFwnQg/G9prdhRR
	CxSCLEivTgLjfPz3ct6ffpX2Gpeq79BU6OAWs5AlyGANhaV1Kmll1JUJhy2778d2D5/If3G6VY1
	qm3IuNbwAPIitES+8Pn0skiJF2E4jRQ==
X-Received: by 2002:a05:701b:4309:b0:168:3243:c91a with SMTP id a92af1059eb24-18511eb6891mr11403402c88.13.1792394746220;
        Mon, 19 Oct 2026 00:25:46 -0700 (PDT)
X-Received: by 2002:a05:701b:4309:b0:168:3243:c91a with SMTP id a92af1059eb24-18511eb6891mr11403360c88.13.1792394745648;
        Mon, 19 Oct 2026 00:25:45 -0700 (PDT)
Received: from [192.168.1.10] ([103.211.19.100])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1831919fdfesm26416418c88.7.2026.10.19.00.25.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Oct 2026 00:25:45 -0700 (PDT)
Message-ID: <7766382e-5187-465b-aa89-ff1bf9a16588@oss.qualcomm.com>
Date: Mon, 19 Oct 2026 12:55:37 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/7] dt-bindings: phy: qcom: Add qcom,sa8775p-csi2-phy
 schema
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>, bod@kernel.org,
        vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org,
        mani@kernel.org, gjorgji.rosikopulos@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com,
        jigarkumar.zala@oss.qualcomm.com, loic.poulain@oss.qualcomm.com,
        vladimir.zapolskiy@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>
References: <20261016235502.2274268-1-anusha.nandi@oss.qualcomm.com>
 <20261016235502.2274268-3-anusha.nandi@oss.qualcomm.com>
 <851434b3-4cf1-4371-9b4a-57dba8022e13@oss.qualcomm.com>
 <20261019-funky-real-skunk-eda6dc@quoll>
Content-Language: en-US
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
In-Reply-To: <20261019-funky-real-skunk-eda6dc@quoll>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE5MDAyOSBTYWx0ZWRfX4emvSBvKF2Qw
 pW2UND23gm/P2EkCFD20Yh6GS337ZfbMYHXAc2359FGjrGU2gwnnbMWsq+lYr4e7kujnbvDm+wG
 1XBHL5/ETvyoaHgGh+8ORU2/Mm7IapU=
X-Authority-Analysis: v=2.4 cv=JpZkP84C c=1 sm=1 tr=0 ts=6ad5c5fb cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=ocEEpg4cTnoGtXECQz/e5g==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=K1xP-2VuxSs3Jipg4doA:9 a=QEXdDO2ut3YA:10 a=Fk4IpSoW4aLDllm1B1p-:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE5MDAyOSBTYWx0ZWRfX1cHsCrrLgPcc
 oIZKx4Fzf0Hx6mdFIMhdySyQcTIpo+zhpZlQ9H//7UBgyrI/B8jcNpkULjytWSPOS6GPDHcqrAu
 jgwkqKZ0TJUzGY+4VX56rpQFp9kXvwEZbzTxaTCsQxd6LPGoq8GMVR21y/nfpb5DhtjWCHq4tlQ
 zNn86i7SELyPK3F8D9EV3eDjGjZubIGwNbECEG4eFqhUw1FXra5crmDMxUfXD5Vd3yLDjGqXmdt
 L5wdYyYXfIy+KmFtLCbNRtfRn7mF8IJEbhrJBx6EmQj7SdIhddCxg2a5qWGG7AOE60BvditrLtq
 +2Z1TTx/vzgVxlYdaI9ATYsUDcwL4nSkWFDHVaET6e8YnPqFDVjKocrUz8DnFirIZEpwHZd5xKM
 uRYhqLxPiBai+s79fIynDx+rs7KAzaj9AvCAhJRdGcfqEaWrtWZCC1q8V+sPDRLXhEYHdEzjgp5
 lJutbyZnrhcrSe37xug==
X-Proofpoint-ORIG-GUID: DDX_4WV79cvKYtbFWqEG1kMJ9azt4Ihh
X-Proofpoint-GUID: DDX_4WV79cvKYtbFWqEG1kMJ9azt4Ihh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-19_02,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 phishscore=0 suspectscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610080000
 definitions=main-2610190029
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_002549_142814_79825FDA 
X-CRM114-Status: GOOD (  10.08  )
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



On 19-10-2026 12:43, Krzysztof Kozlowski wrote:
>> DTS uses 2-cell reg but binding example uses 1-cell. Please align:
>>   reg = <0x0 0x0ac9c000 0x0 0x2000>;
> I don't understand what is supposed to be aligned here. The code is
> correct.
Right, the DTS change is correct.

My comment was about the binding example using a different address/size cell
layout from the real DTS. 

Krzysztof, should the binding example mirror the SoC bus address/size cell
layout here, or is the standalone 2-cell example fine as long as it passes
dt_binding_check?

-- 
Regards,
Nihal Kumar Gupta


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
