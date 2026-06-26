Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 345E5CDE008
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jun 2026 06:13:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iFaQMU80skl0F8Ppfz2Uov7pJcehy8x9FQfo2EWglj0=; b=z4Y9iSabGoKIOp
	oDx2MgB/HjNJkPPTxpuoANpvZlMdsfGyh3K9Po3J5+d1tKwwyXdLuVBXTTXLCcG2Iah5oIUqTPrWa
	uyZBtT/tSmrA4MKAew0PEQa/IXRDmbhjeG1f2I9Wzb+k0858sHHIcR+1u9mGkq3UkAg4UPCPi2svh
	X/2s2SRcj7iwbTG1KyVjh2HgsN90LcscQnhVjslZZW7iE7ljbVcAdsEthz2mhKdRWHShVn7mdI/fi
	ePyQLuy26Uc4qtWCTfCxH3SmnRyJPjTV1Ikm18DUqcU5FvMY0h0LOMIdUz/WAebMzdb1B+R57sA5m
	z5yv3gEOOwlGpwz0bn8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wczp6-0000000Aa65-2MaE;
	Fri, 26 Jun 2026 06:13:56 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wczp4-0000000Aa5b-1RHz
	for linux-phy@lists.infradead.org;
	Fri, 26 Jun 2026 06:13:55 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65Q2ibfH3680267
	for <linux-phy@lists.infradead.org>; Fri, 26 Jun 2026 06:13:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5oaO6nlU8yDgoxuX+c2jtK0nD634i/BWQxbqSO1tKcc=; b=jc4YnbZjP2CjuRnd
	0UoHCGpJlm++bQFF+SQmmGbcHMPgeIeHbhh+cFhoSBoD6dZp3ZzO4VM/ZvPjPANq
	uW43i8pdk05Mb3G9+RlRiahKEc7x3zIeGmYGZD3d9DcH9czuuL3cEpHJ8fzr8y00
	m5Kogkqszc9YaAEW/ri59D8ZqtyPHRkq3n45D46jBrRhzlkRwOM9V79k7lTIBCxG
	lfkkBZgzgnBRRzZtO7ePF6n5rTe7equ2vdlRrA7OjYQUO0T44MGarAu3rWVkSsva
	5qILNaE3RdQPP7UEGp20uQIgG20BmkBhIYnW7+KIdFrSjl3AmmWfcXLOul95Q8AS
	AO4heA==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f1fgds2h3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 26 Jun 2026 06:13:52 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-30c8a940e76so738709eec.1
        for <linux-phy@lists.infradead.org>; Thu, 25 Jun 2026 23:13:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782454432; x=1783059232; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5oaO6nlU8yDgoxuX+c2jtK0nD634i/BWQxbqSO1tKcc=;
        b=GtI9QXbiV5MRN3mUGLw/C4VwXpKa2UsnIJXuQnz8p4erFvdHT1P6rrVWy8cf2xVqRc
         zzsYIYzmQhYIxmWZzX8rjjOcEEpdypr+0FxCSWEV/b6kUIBU+er1Zfw8Kkq6O1UnQK5C
         HCp3fgEBQasTLJG3inRqS+rdAtrFiKcHjQRQkzbuj1YiTSsPbUnBtxXH8QQewuJPqE66
         RzAg8cROgvOYrJ2lmCVyNTn7ZilZRhqCN7gVr9mkqpdyyv2tS916ts13YS00INGSHfFO
         2dvQ5NgZdaXEOnIS95lpHjq9i5GPY32+agl99Hj8RYYCI9XIehLaqxX8EEk0smHjCox4
         KKJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782454432; x=1783059232;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5oaO6nlU8yDgoxuX+c2jtK0nD634i/BWQxbqSO1tKcc=;
        b=if76s/+Vc5yBP9rfMQaEOJKphIJFpiRgop0/s3Uv6q3AGTmoXfKfcIfiIaaI6J/ANc
         jec59ISI+id4E/wLxDl8+DVdmxr6MK8UE4GADobRtkDpVnqtrhVGHIO+bIObm36Xtad6
         zBmxGOYNnhqYSG33tnLFIlgENHlHWmTIvgnKqtE7l5034cwFUFsikRBzy6TFSZs7fip0
         xOyk5cBC8BeyvN9eRqX5R173SG7mrfEaayJv1kciUyvsYuINIES6gaie+CHPWUHKqVas
         sHmkNAK2qdbVH1BE3PPIa8jHcI5RtSWgcZGJY327hF6FYMsYmfFrqO0Lhyjo3Z832Clu
         OzfQ==
X-Forwarded-Encrypted: i=1; AHgh+Rp22HMT0bcrXNhbNpCMDpGPwKGuZgdWEhY/+naprhVYzRAvVcX9HcgFGnucq44WwvWw/nrG2boFQOE=@lists.infradead.org
X-Gm-Message-State: AOJu0YxuwGnZl9UQcPXvA7NlXreaAw1Ok1ah45h2YGAYEM1mvpKIuHyI
	qsZByKo5BDlPkq3faIXXUZxoi2OrUqvCiwx23aESTeqLpJXw6Ejqp5BX4P6OYibtYIe3lGcKU6i
	44NTXotVGfL42L3doouoXesTb+oy4gc+LxV1EuJTHraQo31C6Rhi06NE0rPSnDlYYhG2NhDd5DX
	9nme8=
X-Gm-Gg: AfdE7cmiHrWNViSbd9/ZjS9Up8CIIYOQf2nc6sOi6XJFTWrzw3Y3BgpqNrLQKWJHZD3
	AeuySxjpmeh6lcgC2boAhpIqGpn1gykMIvVzK+xttLnoTokS7FD4iB/+L415cTlXt3QiEEE5RBY
	fBLGjYun7MeXkFOzIeKZcmDlcT7UDAtn3/AYLbAbOk8U9b5vzRv7YF1tYWC36FZyWxg3aMo7ubk
	4yJkk+nVpnwF+cCn0QKIZqd64NdsI9uBFq9vnxjmkPRI7MgdoB6j7Pfi4HlZX3MfoVoxZ4CDjyn
	hGonThclGgLa8ipLyBzMrlu4+WJfTtCIcn0sWCdHpHg2tY4+5ROEd+fKb3/uNu86B33CTGt+3FU
	DTI+7MnA1GHTgYerqtv8SY5zq
X-Received: by 2002:a05:7300:1488:b0:30b:ff0d:1efa with SMTP id 5a478bee46e88-30c84d9b4c8mr4532533eec.24.1782454432184;
        Thu, 25 Jun 2026 23:13:52 -0700 (PDT)
X-Received: by 2002:a05:7300:1488:b0:30b:ff0d:1efa with SMTP id 5a478bee46e88-30c84d9b4c8mr4532498eec.24.1782454431566;
        Thu, 25 Jun 2026 23:13:51 -0700 (PDT)
Received: from oss.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30c9c456cf5sm3782007eec.2.2026.06.25.23.13.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jun 2026 23:13:51 -0700 (PDT)
Date: Fri, 26 Jun 2026 11:43:43 +0530
From: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>,
        Yijie Yang <quic_yijiyang@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 0/6] Additional regulator support for the Qualcomm SGMII
 SerDes PHY
Message-ID: <aj4YlxJDvIsaJF1R@oss.qualcomm.com>
References: <20251124-sgmiieth_serdes_regulator-v1-0-73ae8f9cbe2a@oss.qualcomm.com>
 <CAFEp6-3De6r3XwSmnKpMSSf8KK3K-esDAhTRKN41Bng-Yf8dXg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFEp6-3De6r3XwSmnKpMSSf8KK3K-esDAhTRKN41Bng-Yf8dXg@mail.gmail.com>
X-Authority-Analysis: v=2.4 cv=API5kwXb c=1 sm=1 tr=0 ts=6a3e18a0 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=evnvvmh2EKmFMqWf2KwA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI2MDA0NyBTYWx0ZWRfX6DxBnLW0gKrp
 86R0RS5vLOSfnh2Nrp7ykX0Gd1xjygeg43QgtZrkDJwboEO6dODxkZD31UBNXRJ9wMBMftnAVTk
 +ZkLBVXiqlMeizbViOr+XJ/GYBiNieTSxEfRVDKMvnk566ZxCAh8Ez5v7QIJ79FoINc+ZIaugDU
 jQQZ4iKPoSZgyeKYPEJ/67ZRLQxhMKx9xSt+/8mqK6TNdHPvf9X04JkpLCZJyhQc9cJMCZmg7Nn
 zB7XBLuHqFgmgSYcYo8rXcbL4Trpa0GriQwlbJGzNZ2hvrVk01pU+xQTiImY4KqEg9hVjkSUX2X
 jXv/4JqgF8P0hRdBDZd6CB9H1/WLy4QTSvwq4axlGtvxxlTpD+8V47bqOkg3NN0u6nkOXYdu7o6
 7I6/KcZITqx/DOvtd7ZtQEqKPf0fdXkvZUXPFGG0vZ2WS9dsqOU4AFp0pLnL7uSC78Yd4T7k7yQ
 UV+A4vssjFyCiUYl3PA==
X-Proofpoint-ORIG-GUID: K4BvlV4bwtylYq6IX-Cy6_xHN-RTJ1T7
X-Proofpoint-GUID: K4BvlV4bwtylYq6IX-Cy6_xHN-RTJ1T7
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI2MDA0NyBTYWx0ZWRfX624RlmBNQJVy
 VFX8YHXHH/7LT0Fs2a2DvrrPbGilB8rCg0s/UNG1XsI34Wq0dTRvBUOg5FiDI7CRMcC1xse6KqM
 SG1uhdLKUwYY/6WjeAfKpJZrqBGTGDQ=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-26_01,2026-06-24_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1011 bulkscore=0 impostorscore=0 lowpriorityscore=0
 priorityscore=1501 adultscore=0 malwarescore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606260047
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260625_231354_387849_30840A53 
X-CRM114-Status: GOOD (  25.05  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gTW9uLCBKdW4gMjIsIDIwMjYgYXQgMDQ6MDg6NTVQTSArMDIwMCwgTG9pYyBQb3VsYWluIHdy
b3RlOgo+IEhpLAo+IAo+IE9uIE1vbiwgTm92IDI0LCAyMDI1IGF0IDEwOjI24oCvQU0gTW9oZCBB
eWFhbiBBbndhcgo+IDxtb2hkLmFud2FyQG9zcy5xdWFsY29tbS5jb20+IHdyb3RlOgo+ID4KPiA+
IFRoaXMgcGF0Y2ggc2VyaWVzIGFkZHJlc3NlcyBhIFNlckRlcyBwb3dlci11cCBmYWlsdXJlIG9i
c2VydmVkIG9uIHRoZQo+ID4gUUNTODMwMCBSaWRlIGJvYXJkIHVzaW5nIHRoZSBwaHktcWNvbS1z
Z21paS1ldGggZHJpdmVyLiBUaGUgaXNzdWUgb2NjdXJzCj4gPiBiZWNhdXNlIHRoZSBTZXJEZXMg
UEhZIHJlcXVpcmVzIGJvdGggTDVBIGFuZCBMNEEgcmVndWxhdG9ycyB0byBiZQo+ID4gZW5hYmxl
ZCBkdXJpbmcgaW5pdGlhbGl6YXRpb24uIElmIGVpdGhlciBvbmUgb2YgdGhlbSBpcyBkaXNhYmxl
ZCwgdGhlCj4gPiBzdGF0dXMgcmVnaXN0ZXIgZG9lcyBub3QgcmVzZXQsIGFuZCB0aGUgRXRoZXJu
ZXQgaW50ZXJmYWNlIGZhaWxzIHRvIGNvbWUKPiA+IHVwIGR1ZSB0byBhIHRpbWVvdXQ6Cj4gPgo+
ID4gWyAgIDc3LjEwNTY1MV0gcWNvbS1kd21hYy1zZ21paS1waHkgODkwOTAwMC5waHk6IFFTRVJE
RVNfQ09NX0NfUkVBRFlfU1RBVFVTIHRpbWVkLW91dAo+ID4gWyAgIDc3LjExMzQ0N10gcWNvbS1l
dGhxb3MgMjMwNDAwMDAuZXRoZXJuZXQgZXRoMDogX19zdG1tYWNfb3BlbjogU2VyZGVzIHBvd2Vy
dXAgZmFpbGVkCj4gPgo+ID4gUHJlc3VtYWJseSwgdGhlIGlzc3VlIGlzIG5vdCBzZWVuIG9uIGFs
bCB1c2VycyBvZiB0aGlzIFBIWSBiZWNhdXNlIGJvdGgKPiA+IHJlZ3VsYXRvcnMgYXJlIG9mdGVu
IHNoYXJlZCB3aXRoIG90aGVyIHBlcmlwaGVyYWxzLiBIb3dldmVyLCB0aGUgcG93ZXIKPiA+IHJh
aWwgc2NoZW1hdGljcyBmb3IgYm9hcmRzIHVzaW5nIHRoaXMgU2VyRGVzIFBIWSBzaG93IHRoYXQg
aXQgaXMKPiA+IHN1cHBsaWVkIGJ5IGJvdGggTDVBICgxLjJWKSBhbmQgTDRBICgwLjlWKSByZWd1
bGF0b3JzLgo+ID4KPiA+IFRoaXMgc2VyaWVzIGhhcyBiZWVuIHRlc3RlZCBvbiB0aGUgUUNTODMw
MCBSaWRlIGJvYXJkLCBhbmQgdGhlIHJlcG9ydGVkCj4gPiBpc3N1ZSB3YXMgcmVzb2x2ZWQuIEFs
bCBNb25hY28gYW5kIExlbWFucyBkZXJpdmF0aXZlIGJvYXJkcyByZXF1aXJlIHRoaXMKPiA+IG5l
dyBjb25maWd1cmF0aW9uIGFzIHRoZXkgdXNlIHRoZSBzYW1lIFNlckRlcyBQSFkuCj4gPgo+ID4g
U2lnbmVkLW9mZi1ieTogTW9oZCBBeWFhbiBBbndhciA8bW9oZC5hbndhckBvc3MucXVhbGNvbW0u
Y29tPgo+IAo+IFRoaXMgYXBwZWFycyB0byBiZSBhIHJlYWwgaXNzdWUsIGJ1dCBJIGhhdmVu4oCZ
dCBzZWVuIGEgbmV3IHZlcnNpb24gb2YKPiB0aGUgc2VyaWVzIG9yIGFueSByZXNwb25zZSB0byB0
aGUgZmVlZGJhY2sgc28gZmFyLiBDb3VsZCB5b3UgcGxlYXNlCj4gZm9sbG93IHVwIG9uIHRoaXM/
Cj4gCgpJIHdpbGwgc2hvcnRseSBzZW5kIG91dCBhIHYyLiBJIGdvdCBhY2Nlc3MgdG8gbW9yZSBk
ZXRhaWxzIGFib3V0IHRoZQpoYXJkd2FyZSwgYW5kIGl0IGhhcyB0d28gZGVkaWNhdGVkIHJlZ3Vs
YXRvcnMgd2hpY2ggbmVlZCB0byBiZSBlbmFibGVkLgpUaGUgc2FtZSByZXF1aXJlbWVudHMgYXJl
IHRoZXJlIG9uIGFsbCBMZW1hbnMvTW9uYWNvLWJhc2VkIGJvYXJkcy4KCglBeWFhbgoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
