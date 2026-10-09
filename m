Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4484ECA6018
	for <linux-phy@archiver.kernel.org>; Fri,  9 Oct 2026 11:36:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zr1d95NlbQuEkvjoqL6zZdDZ94q+NhFoz36NqNmpFm4=; b=cExhUiW4W7nGZn
	UUizNORiAMbbbbJM+c3LhVKxRsc3idZstLqk2Be/vBNYdPschOHQo8/rAT9Ob630PQDbw85WxSDDx
	CsHQQ5vk9Md068F9klSL+bbl5mhuEK6QDsAm9ga4xZCS3fHwIkTVW1LCfQpxvyBtZW26AdUeCEkOp
	0O/jZZ5xtY3mvz8d0Jxueo9WgH2c+JOSR1uMfIoIEI7LA5/SjQNXVwO4IqcVsj+W1hmzlGTRwDS7+
	U43LjLPmZW63IWzIbj1xbAfymQmEdyLjCNv8mIT2fbygtmfd1WEQlewB9XrgVT9qpfShT5HnVn5l0
	Z+vqPUfUlpWMyv/hBkBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF8tv-00000006BsZ-3pvJ;
	Fri, 09 Oct 2026 11:36:35 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF8tt-00000006Brp-0SLB
	for linux-phy@lists.infradead.org;
	Fri, 09 Oct 2026 11:36:35 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6998KN3d1223198
	for <linux-phy@lists.infradead.org>; Fri, 9 Oct 2026 11:36:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LpoT01wAxSeGbAtr3r8DJqlxKzqo+vdrIEEQQ4fC6DE=; b=AmYvUBv/bs1sH++b
	a1yhg9FJDgQSLnbzQlc2Z7xH3CvA9h4hhopqh499NgtquM2X/2PeGRgEjkC/NV0p
	/rjmK88qTn6CifCrjWYlcRfdcGdcc/o9qqfXptPJB8A7yfhWMMpUoK0gRh4DYsXd
	o5n6BuE2p//kpV5D6HIk1FNmPdeD+3HNAg/jwGg89DENRJuMYMEhWNTOeoSxpzE3
	XGbb0qRz+USxTb0SEhf42fQ3ExDlAiE6+JpBWNj8+lgemwhHCT3iO+xVPl6iJMmh
	u5fl2+IoDRMzDogiNMo8EJxMMbJJ/ZBG9bLhu/N8OkFiMAdRpqPs5vcOGB0h2bVN
	0M7BmA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h6fxkb97t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 Oct 2026 11:36:32 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-38f97b3f853so8345130a91.3
        for <linux-phy@lists.infradead.org>; Fri, 09 Oct 2026 04:36:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791545791; x=1792150591; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=LpoT01wAxSeGbAtr3r8DJqlxKzqo+vdrIEEQQ4fC6DE=;
        b=WVXXI2+cKV2IARR0BAAiZGEFGlIp7IdJKODucuIo8zq3CbANMJTe6Mn+uXwcqVEqPE
         jjSyuGxNtwk6Ki+hLIofmH7JHZBpm7er8a+r7TsfUMZvrqDlfT5+uF1Hhe9XKzXYLniL
         hR60D2Xq+Q7GSa6ej50yvxUhw2/XHyZ1xyiA3F0Bxb+6FPUK5204PnVwe533XA9Oj21l
         MC6s53F09+l8VCGfLYxOt2TW+mCceQDM5eKfulF32mECAaN+43x9eDzng6foOjdKiGCA
         aEeJ2TsmZJO0Mrd8bNPham7FrTkgS6G+Fti3/h6XS5GmLTUX22/uuS8VcPJfdvdYIBko
         tOuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791545791; x=1792150591;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=LpoT01wAxSeGbAtr3r8DJqlxKzqo+vdrIEEQQ4fC6DE=;
        b=SdozWhX/O/PU6oLqNBWM1K+wMeEZANIFltbtrkU9nJuXGT82NtdarCtc5uQ8FO4NB2
         ZjkYp/9siu4Y/PKhhKBmmcdW2u7ESxLfOmNnyOKBQHSmChoHZH0xAYij2sLgF5hna5pU
         O10l6gPvuZhD/w4KTC+ZQ0UloCKsoNyiAa5LM3F37HTpMchhSouUMHH9pjRsEgeTXwTp
         j9xyl6vskxAXEPsWWeQDOmkzzhnFjAbw6v+QQf1T6a/kJcQKYHzBMTKfk42x7D1t7WV6
         OZYKsijeIVHxkTglMIfXsJOm6B7c1xjSnbTFoyJh2AxhAifmnrIcyeVqnJT9QK7gBUi8
         BERQ==
X-Forwarded-Encrypted: i=1; AKwUvBzsaRIui4oiaI+JpeiiSao8XoDXfV06sXnbCs2/23INVWoyUwab7w6u1klOEHjCGFzAk4JJ5ycecUI=@lists.infradead.org
X-Gm-Message-State: AFq9FYJZrOvHx02JWsDjH9WC3xBQRXVdi4E6a6NlMKbTwutE0j76F1ui
	4JM2ZrejTfi6CbIzfCmOHALlkLKKHFvvNumzo+eJei+YIUeIJgEjbckMwJHK5zOedgRwOwclwBo
	5j9z1Yl1Pq0nVBL3CRvRmdAgMg/3XX+1vWiWCjhcLuw6fpnI8RmuWkjy9X97x+IXteA8d
X-Gm-Gg: AYBFou3GkvyU/vEx5prXJsxXKn5gg5TgxaFny13ssFnjoc2JenNKkCFt/WWjSjmo+p6
	0bp+m9EKo39wYnTPZQCpObla9ar7mgB985i0LCC86qWROCMjH85ibWfw4/QpsruvMCEqrftTXKD
	MPhPq8QiYHzpQxLyVXbjCbbwtUCVS7mk30BMsDtFB05MAIjg0INSX0r7weHpJH3p0E2mEn4X62w
	842PNCPa0C0EBaDqzRQiBSef/y2xvlOWDwEATjgcHrv/lroRuCaNdC+L7qG6a4M6+66XjdB1IeG
	rulDWsYiKJr/sNADX398DBngCBvBto9S0UyTcrS3wmIbO3xbaxsC/bPrPe0x3K9sWatZdT1yuzW
	O0cRrjFNlInsfGS3YH1Bzq7lMkPzdyWjmMlxKlwg4/W1iS3rgYL4THBsVNCTRYF4=
X-Received: by 2002:a17:90b:224c:b0:39e:6a80:b799 with SMTP id 98e67ed59e1d1-3ab3a8d16dbmr1720379a91.41.1791545790926;
        Fri, 09 Oct 2026 04:36:30 -0700 (PDT)
X-Received: by 2002:a17:90b:224c:b0:39e:6a80:b799 with SMTP id 98e67ed59e1d1-3ab3a8d16dbmr1720362a91.41.1791545790450;
        Fri, 09 Oct 2026 04:36:30 -0700 (PDT)
Received: from [192.168.1.6] ([117.143.161.217])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ab37163e21sm3634153a91.14.2026.10.09.04.36.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2026 04:36:30 -0700 (PDT)
Message-ID: <9afa48c4-b5b7-43b8-80e5-d829906a2088@oss.qualcomm.com>
Date: Fri, 9 Oct 2026 19:36:19 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v19 08/12] media: qcom: camss: vfe: Add support for VFE
 1080
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>, bod@kernel.org
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Atiya Kailany <atiya.kailany@oss.qualcomm.com>
References: <20261008-kaanapali-camss-v19-0-b2c583ef50e0@oss.qualcomm.com>
 <20261008-kaanapali-camss-v19-8-b2c583ef50e0@oss.qualcomm.com>
 <179149982796.2596899.756044515233442982.b4-reply@b4>
 <7452d85d-83a8-493c-8d74-5020ab72982d@oss.qualcomm.com>
 <8a2ff836-57ce-4df6-aaae-0db3f36e8b58@linaro.org>
Content-Language: en-US
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
In-Reply-To: <8a2ff836-57ce-4df6-aaae-0db3f36e8b58@linaro.org>
X-Proofpoint-GUID: N3s2ZOunIfNIFicndllYT5Pl5HN3N_M_
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA5MDA0NiBTYWx0ZWRfX3KHdM9xtJynZ
 ya8rvkrjciMmfJgoo+i2oH+/EAu5jUdlon10gzmxMSckjbCXFtNr45QnX5P8ebzGN4XIxX4P8Z0
 MqwxKkRk5gdPc358aBgGJQh8tehTxbs=
X-Authority-Analysis: v=2.4 cv=Cs0q4X4D c=1 sm=1 tr=0 ts=6ac8d1c0 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=K/RrOd38U9TixX+j9hIN8g==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=CGVMczJOcLXbesxPaW8A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA5MDA0NiBTYWx0ZWRfX06Xpmpl59cjl
 /DLFYRWUWlY1cpY1hS/BZXgYHNmlp2MhYhaWGJ2+PDaR8YJLDjNLc7Taz4P92XgfOODe97aGZce
 g2LvTgmGz/zy9uz3G5TfpqBPCSVtm67yyZhuiRFL97AOnhX/7SlXXKCBgj3OEZ9qoO2MMEsiM+I
 fg0azyleGv0Mc7iNhVxhUeqBZSFtb4WOszEuIoOSBQiVuoZ7ROhMMwI5GcevmbsDTdivZZKOEgy
 oeqf93aeXZJ8nCudCRTs016/h/ZkDiLdUBVDanFdd1Bve4VDixgkw//0bDRtgb5MmBvQ9/3f7nN
 X/j1H/v9SvS/CzoNJsHuKex1HFjJvS1KHA364qLNFbOZ53Oof01u9TjeDdY/GS6jIWrZGyViA87
 6VWX9nLso87tcD0AjYgQ4DPgOrzt13r4+2PplNPozY12TXe02ae9UsVaJ4//+tYcfRIDuEDWCQH
 ZdJWnFfqBujuZbTlOpQ==
X-Proofpoint-ORIG-GUID: N3s2ZOunIfNIFicndllYT5Pl5HN3N_M_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-09_03,2026-10-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 clxscore=1015 adultscore=0
 priorityscore=1501 lowpriorityscore=0 impostorscore=0 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610020000
 definitions=main-2610090046
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261009_043633_273904_13F36977 
X-CRM114-Status: GOOD (  19.81  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMTAvOS8yMDI2IDQ6MzkgUE0sIEJyeWFuIE8nRG9ub2dodWUgd3JvdGU6Cj4gT24gMDkvMTAv
MjAyNiAwMzo1OSwgSGFuZ3hpYW5nIE1hIHdyb3RlOgo+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvTWFrZWZpbGUgYi9kcml2ZXJzLyAKPj4+PiBtZWRp
YS9wbGF0Zm9ybS9xY29tL2NhbXNzL01ha2VmaWxlCj4+Pj4gaW5kZXggMjE4YmEzYTk1OTM5Li40
MmExNGU4ZmUxYjcgMTAwNjQ0Cj4+Pj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29t
L2NhbXNzL01ha2VmaWxlCj4+Pj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2Nh
bXNzL01ha2VmaWxlCj4+Pj4gQEAgLTI2LDYgKzI2LDcgQEAgcWNvbS1jYW1zcy1vYmpzICs9IFwK
Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgY2Ftc3MtdmZlLTM0MC5vIFwKPj4+PiDCoMKgwqDCoMKg
wqDCoMKgwqAgY2Ftc3MtdmZlLTQ4MC5vIFwKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgY2Ftc3Mt
dmZlLTY4MC5vIFwKPj4+PiArwqDCoMKgwqDCoMKgwqAgY2Ftc3MtdmZlLTEwODAubyBcCj4+Pgo+
Pj4gQ2FuJ3Qgc2F5IEknbSAxMDAwMDAwJSBjbGVhciBvbiB3aGVuIHJlZ191cGRhdGUoKSBpcyBz
dXBwb3NlZCB0byAKPj4+IGhhcHBlbiBpbgo+Pj4gdGhlIGZsb3cgb2YgdGhlIGxvZ2ljIHlvdSBo
YXZlIGhlcmUuCj4+Pgo+Pj4gSSdtIGEgYml0IHN1c3BpY2lvdXMgb2YgYWRkaW5nIGEgbmV3IGZs
YWcgd2hpY2ggc2tpcHMgdGhlIHVwZGF0ZSBidXQKPj4+IGFzc3VtZXMgc29tZSBvdGhlciBiaXQg
b2YgY29kZSBleGVjdXRlcyBsYXRlciBhbmQgZG9lcyB0aGF0IHVwZGF0ZS4KPj4+Cj4+PiBDYW4g
eW91IGV4cGxhaW4gdGhpcyBzb21lIG1vcmUgcGxlYXNlLgo+Pj4KPj4KPj4gVGhhbmtzIGZvciB0
aGUgcmV2aWV3LiBUaGVzZSBwb2ludHMgd2VyZSBkaXNjdXNzZWQgaW4gYW4gZWFybGllciAKPj4g
cmV2aXNpb24sIGJ1dCBJIHNob3VsZCBoYXZlIGV4cGxhaW5lZCB0aGVtIGRpcmVjdGx5IGluIHRo
aXMgdmVyc2lvbi4KPj4KPj4gVmlqYXkgb25jZSBjbGFyaWZpZWQgdGhhdCB0aGUgY29uZmlndXJh
dGlvbiBwcmluY2lwbGUgYmVjYW1lIG1vcmUgCj4+IHN0cmljdCBzaW5jZSBLYWFuYXBhbGkuIFdl
IGNhbiBiYWNrIHRvIDxodHRwczovL2xvcmUua2VybmVsLm9yZy8gCj4+IGFsbC82NjJhMjFhMy0g
ZGU4Yi00MDZmLWExNWQtYjhhNTcyYWE3OWFiQG9zcy5xdWFsY29tbS5jb20vPiBmb3IgbW9yZSAK
Pj4gZGV0YWlscy4KPj4KPj4gSW4gc2hvcnQsIHRoZSBoYXJkd2FyZSBndWlkYW5jZSBhc2tzIHRv
IGlzc3VlIHRoZSBSRUdfVVBEQVRFIGFmdGVyIGFsbCAKPj4gb2YgdGhlIENTSUQgY29uZmlndXJh
dGlvbiByZWdpc3RlcnMgYXJlIHdyaXR0ZW4uIEthYW5hcGFsaSBzZWVtcyB0byAKPj4gaGF2ZSB2
ZXJ5IHN0cmljdCBkZXBlbmRlbmN5IGluIHRoZSBoYXJkd2FyZSBhYm91dCB0aGlzIHNlcXVlbmNl
IGFuZCAKPj4gd2l0aCB0aGUgb3JpZ2luYWwgc2VxdWVuY2UsIG5vIFJVUCBET05FIG9yIEJVRiBE
T05FIGV2ZW50cyBhcmUgCj4+IHJlY2VpdmVkIGF0IGFsbC4gV2hpbGUgb3RoZXIgY2hpcHNldHMg
Y2FuIHdvcmsgbm9ybWFsbHkuCj4gCj4gQnV0IGhvdy93aGVyZSBhcmUgd2Ugc2F5aW5nIHRoYXQg
aGFwcGVucyA/Cj4gCj4gLS0tCj4gYm9kCgpIaSBCcnlhbiwKCldoZW4gcmVnX3VwZGF0ZV9hZnRl
cl9jc2lkX2NvbmZpZyBpcyBzZXQsIHZmZV9lbmFibGVfb3V0cHV0X3YyKCkgbG9hZHMKdGhlIGJ1
ZmZlcnMgYnV0IHNraXBzIHJlZ191cGRhdGUuIFRoZSBSVVAgaXMgd3JpdHRlbiBsYXRlciBmcm9t
CmNzaWRfY29uZmlndXJlX3N0cmVhbSgpLCBhZnRlciB0aGUgUlggYW5kIFJESSBjb25maWd1cmF0
aW9uLgoKT24gc3RyZWFtIHN0YXJ0OgoKdmlkZW9fc3RhcnRfc3RyZWFtaW5nKCkKICAgc19zdHJl
YW0oMSkgb24gVkZFICAgICAgICAgICAgICA8LSB3YWxrZWQgdXBzdHJlYW0gZnJvbSB2aWRlbyBu
b2RlCiAgICAgdmZlX2VuYWJsZV9vdXRwdXRfdjIoKSAgICAgICAgPC0gb25seSBsb2FkIGJ1ZmZl
cnMsIG5vIHJlZ191cGRhdGUKICAgc19zdHJlYW0oMSkgb24gQ1NJRAogICAgIGNzaWRfc2V0X3N0
cmVhbSgpCiAgICAgICBjc2lkX2NvbmZpZ3VyZV9zdHJlYW0oKSAgICAgPC0gaWYgbmVlZF92Y191
cGRhdGUsIGVsc2Ugbm90CiAgICAgICAgIHByb2dyYW0gUlggY29uZmlnCiAgICAgICAgIGZvciBl
YWNoIFZDOgogICAgICAgICAgIHByb2dyYW0gUkRJIGFuZCBSWCBWQyBjb25maWcKICAgICAgICAg
ICBBVVAgKyBSVVAgKF9fY3NpZF9yZWdfdXBkYXRlIGNvdmVycyBib3RoKQogICAgICAgICAgIFJE
SV9DVFJMIHN0YXJ0CgpPbiB0aGlzIHBhdGggdGhlIFZGRSByZWdfdXBkYXRlIGlzIGl0c2VsZiBh
IENTSUQgd3JpdGUsIENTSURfQVVQX0NNRAphbmQgUlVQX1NFVCBpbiBjc2lkX3N1YmRldl9yZWdf
dXBkYXRlKCksIG5vdCBhIFZGRSByZWdpc3RlciB3cml0ZS4KUlVQIGdvZXMgaW4gYWZ0ZXIgdGhl
IGNvbmZpZ3VyYXRpb24gd3JpdGVzLiBPbmx5IHRoZSBSRElfQ1RSTCBzdGFydApjb21tYW5kIGZv
bGxvd3MgaXQuCgpUaGUgdmlkZW8gc3RyZWFtaW5nIGZ1bmN0aW9uIHdhbGtzIHRoZSBwaXBlbGlu
ZSB1cHN0cmVhbSBmcm9tIHRoZSB2aWRlbyAKbm9kZSBhbmQgY2FsbHMgc19zdHJlYW0oMSkgb24g
ZWFjaCBzdWJkZXYgaW4gdHVybiwgc28gdGhlIFZGRSBpcyBhbHdheXMgCnN0YXJ0ZWQgYmVmb3Jl
IHRoZSBDU0lELiBXaGF0IGlzbid0IG9idmlvdXMgaXMgdGhhdCAKdmZlX2VuYWJsZV9vdXRwdXRf
djIoKSBkZXBlbmRzIG9uIHRoYXQgb3JkZXIgdG8gZ2V0IGl0cyBSVVAgaXNzdWVkIGF0IGFsbC4K
Ck9uIEthYW5hcGFsaSwgUkVHX1VQREFURSBoYXMgdG8gY29tZSBhZnRlciB0aGUgQ1NJRCBjb25m
aWd1cmF0aW9uIGlzIAp3cml0dGVuLCBvdGhlcndpc2Ugbm8gUlVQIERPTkUgb3IgQlVGIERPTkUg
aXMgc2Vlbi4gSSBoYXZlbid0IHJlcHJvZHVjZWQgCnRoZSBmYWlsdXJlIGNhc2UgbXlzZWxmIGFz
IG5vIEJVRl9ET05FIGNvdW50IG1pc21hdGNoIGFuZCBmcmFtZSBtaXNzaW5nIApldmVudHMgYXJl
IG9ic2VydmVkLiBTbyBJIHRoaW5rIHRoZSBpbmZvcm1hdGlvbiBnZXQgZnJvbSBoYXJkd2FyZSAK
Z3VpZGFuY2Ugc2hvdWxkIGJlIHJlbGlhYmxlLiBUaGFua3MuCgotLS0KQmVzdCBSZWdhcmRzLApI
YW5neGlhbmcKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
