Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C93D5CCA462
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 07:50:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/WJxHYLsFDFqjK/dgb2l5wpmu43GOWs0+6c//Yl60r8=; b=MNUudvYOHoL8qQ
	JYwv/fKiuyiK5s3Se9e3MqEgdHnI508SDuITN2+l9sPIHraCFZSjpypT2OK0RVLw6FpEV1rNark5H
	lxB9SCDhTh4pJkY6hXPdV+2rWAcKZR3oDwSgWOMGFn7et26m4iex1oD/KKGv92p5QBMx3P3LjsO8j
	H1rf2GyhiglB8kQuPNm6C2BSf5yxttzcUWKF3T26/CygwzhlnxSYfIqEmBbTtMcSzn0ZqyT2MQMDy
	qzFTYjVy9K0lfjOM+5kqjNczGnNbkchcUtwZFfvegZFk5O6iFLjk583jXgrpmh0pBfdXXGHGC8XEj
	ohq8MjaEX5sLLfcoGJhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHci8-00000002GaE-3deq;
	Fri, 16 Oct 2026 07:50:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHci6-00000002GZe-0GXO
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 07:50:39 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69G75rRt1635423
	for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 07:50:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Cac2SsbUpbTX58DTz0jrcqCuNi7ZOkA7ZgNCrxGWe8w=; b=bqx0GIULVEZ0BXv1
	od54Q8iEOTBmD3qGKcv+wqjM/h9tX+TNbRdLnyAafGBPN17aJtZpM76ETsMAwGtI
	OL7vWqbx3UFGLeeBxNyVo06XsH/OViVlUVpOciNF4pF8aB3fJT/WI2CregIoli6m
	DbBQEUA36k5tcgudCf7tkh+McX1s19USm/p570neMhabLO7GYSVGOqaSI/LNhfyS
	A78pZiRih1DjTGVM/KWd8bIBn7OSpGeRXzjF0vc2g5Kdze1vOJ8mBUi1mCXPK5Ek
	G+VbQYVPZcrrBQ0YRbnrAmekABBPJpQ+4QoxuZYM+ZJQpE0pZlJqeW2iNsdZUycT
	gsJBbw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hb8r11gvk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 07:50:37 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-93e92aad34aso1124380885a.0
        for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 00:50:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792137036; cv=none;
        d=google.com; s=arc-20260327;
        b=cHWE4XFmOF2mpjjjkGNVWPj7CwdQcUqHtr14UzVItkS9bfdlT+Ic8iT+uvs0q74EbE
         6SnNrue+7YGF3SwuZrmkmAEm8GRpKpcU3UZRKQEbz6+O3hFypC+tKgZSn9Xv3OzWbizh
         rdg1shw579Slr6PMf947Ydu5mrBGT7B4W62vQUKbN10NRn3A/c8i1e+unZlYgGXwiewD
         n1EEh1bVtXydCC3GOVEvFAcx4M+qoVBogjiIswcaSAzVJfVYC28zjzR0joB5uOv8KWp8
         Tow0mUqJAd3S+SIlrcgBfPFZPSnqzD7kqIIJSgf2TYGH6/3qdRpbjQmyFCb60OWNykj8
         inOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Cac2SsbUpbTX58DTz0jrcqCuNi7ZOkA7ZgNCrxGWe8w=;
        fh=ATqeaprY7llIrlAjqMaKQrKeWp/kdchA8TP02lTZ4eM=;
        b=Yy/mJH0JcGq7odX144kdcv2Zq1p+t4LKuh2hM0LKzR58XbxmNy0cAknO69/e8n6Nj6
         Ws9+iiZvPVEPUkAovVNJiVMl6pH2XBq8vKEL3Dj1Yek3clThvsLuz86pzFsITdelgm1G
         ehyv0ffQXLzK9/EXNqSIc+5UUzs7c0i0KxiGEDH4GllP+xba9p1W5VhVtIRov7atPCuz
         +Non+jsUbVzL8MQbQO7a7Zy3QiD0dRuavnnZV3rJTQo5XvHaTVb6LWFF4XlzGg7J1CtF
         DV1b8UrBgSu0QJA2gx4RQ20DOY+P3pVG4TQqW7QdQee+rfKPNenT0Iy6ESYfhN8sVZzQ
         mfQw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792137036; x=1792741836; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Cac2SsbUpbTX58DTz0jrcqCuNi7ZOkA7ZgNCrxGWe8w=;
        b=BG3jI00yfzEmkomU9SWDpyexH3SV08qVcPz4WNKEBWZFaS86t35+ujeXSuy18y41D0
         nahHC4RByHWLNrmw73Qic1ybJU9mMfQ4eZYrXrQoYbppMsctCyUznQsop8j7m+e5gR1U
         ij0AZU/eQfRDfzvBNe/vxRNqkxUVj8sS+OWSlkQQrO1E1SzwH2uYmpArA9+l8xoUAvZK
         0c36AKNSfSzkJEIg9pkrbkKXmTQC9CJ+ZIASzLdG5NGv4Oyx7L5AbEX2wMIbRChNmdKq
         9RTGdEc54OsrXZhpULScgOGVvP/njN9GVmsYgUBLF6g0jLsaZuSAy6D81mXpPc+rXTHg
         9fBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792137036; x=1792741836;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Cac2SsbUpbTX58DTz0jrcqCuNi7ZOkA7ZgNCrxGWe8w=;
        b=CHhyJAy6O6wm/p3u91DLf6j90mtMVbEbvJ9Jevn0e1OmLyR5t/NXG15ym5s1MoQ2gQ
         RmpwIsCWFW1dbDnSi5kUiPkijVyvWaKKs4hzFMpT39Tx1f2IrGBa9GDhFqlotupeCZXF
         cdJ6Fjh6mbLsPiT/C9BqroWJFriuBDcoeUXyowKbsyjiD8OxJZLUUisx9Fv2VzpntE8U
         V3grwLo1IkrWvILarPEVo08cwZaVbtmMISn5BVPvorxtaLk6jAwgSuhBzRPXblKLYzK4
         kKWt2wX9DZHY1WGwNKVR7o+69VRVnnixPl9yoFiYIklxieN/YCaCZEB7D0I1g8Kzc1Re
         6f9A==
X-Forwarded-Encrypted: i=1; AKwUvBxNP4vhHG3EHjJFJponw6i09RW894MByg9YyHW8DJB9Masw9+THZM9DaqOVuea6FBAyW5S4mGqlCbg=@lists.infradead.org
X-Gm-Message-State: AFq9FYL+YT+IESmHqQFtCEfWc61EpBIlitdUDmg01tXAs9v7q1cYtvuF
	9P/PZZH9RN52HiopqC3KYKP/1JSwEL73M+eaoKYX7QwbhnBK5p8f0JQ5bnTIY+4mYe1EECYfd8e
	cgntRmw2+Mi2F8vVufe1hnzdJMcm+n+Kj9K+pFSYp8GSUecpqFoQmMAD18H6s+95uHnumSV3ldS
	/zG6HiUna8yap0EDeflAGAmqRVxlCd1qa2bmGiP1CROTc=
X-Gm-Gg: AYBFou3j4Pdq83p2szSokVgA6ovEX17TExPxxF4jLc9uwrH2NkeOD3mmghZvt8kRotf
	9V56Rb1rTitDdj4cic0TWbLvGN0gO4p+zov/vIPtN/wzCMQtu4SFeH9JNLDQ7PYsK+lYzAKJ+N+
	FSW60y9P9OT3WZtbdulc3Xa9Txxh023v84mRgPZ7xVu5GzyAxUGiOnVNrq0qe4PdMvOwUrHckc4
	8By+Bmuvc4g26tMJBsG9L2XeNmg2eVMd4RNYnE5RIOPudaLn/FHEXAqV3td7fgaCDcXKBJJutVz
X-Received: by 2002:a05:620a:1786:b0:93b:ec83:80ee with SMTP id af79cd13be357-93ebd25d1demr3398992885a.57.1792137036393;
        Fri, 16 Oct 2026 00:50:36 -0700 (PDT)
X-Received: by 2002:a05:620a:1786:b0:93b:ec83:80ee with SMTP id
 af79cd13be357-93ebd25d1demr3398990185a.57.1792137035856; Fri, 16 Oct 2026
 00:50:35 -0700 (PDT)
MIME-Version: 1.0
References: <20261015-x1e-cphy-rfc-v1-0-1f3fa9af940a@gmail.com> <20261015-x1e-cphy-rfc-v1-3-1f3fa9af940a@gmail.com>
In-Reply-To: <20261015-x1e-cphy-rfc-v1-3-1f3fa9af940a@gmail.com>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Fri, 16 Oct 2026 09:50:24 +0200
X-Gm-Features: AclHuK8JKCvyx1h6mjiUhNqE7WWuH5Nj8DI463hKl1Pcfxn_BS7ehKW2f4RxCvc
Message-ID: <CAFEp6-17SySt2t5HGYGeQ0RRf6DPQDz08JjsAJicaj2R1KDD_Q@mail.gmail.com>
Subject: Re: [PATCH RFC 3/4] media: qcom: camss: csid-680: Select C-PHY in the receiver
To: geocausa@gmail.com
Cc: "Bryan O'Donoghue" <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        David Heidelberg <david@ixit.cz>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Proofpoint-ORIG-GUID: _5TZqgycK-0tN8sAQm7qkikK7EjQtz6S
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE2MDAzMSBTYWx0ZWRfX78RDb0Q+PuZx
 mU1FDdv0XiyJ9Ej3MvaPOpy1URlPGQ42oGZDZqi9jKJfsgym7M/6xbVrNfeVrq9jG07fkK+ZDSE
 YpSpP+EZY4axspJ3UJEHvxzrcecdQ3I=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE2MDAzMSBTYWx0ZWRfX5p4AV8udkKtN
 8+cinwdnpLdrNKX+lMrwCeFBVfG5XQ0haVgo+pbHD8iabwhO5mwQGd6raTQNkhXrYLqMqt89Cgh
 2vkyOymZS54oELH6b7OmQ34H3gABX94NA7UmIuk7IG8+fVkZrgriNegs395jOi0Xi998rsZL+3f
 5jQDJN/oi5iT8oL6m1bh1wJzvvvMH6AUxKmyqruyeGmoMdoGdhcjiUdh/wfgL+14FHYdGNToOpL
 M6luI2tMiel+pQ5JGsYyMqU5Ei1YupYXvi3neAYHH+xNx/7P7u/zWGxFIFiaH0dJ9O6wICN/waj
 4t8WFu3M8YIed9hWs0kq/MdzIZTQTCX/eHaERYOHoQnYjU0cjvqZiojsJTwVCa6yi3Y5o3QY0uU
 jPa46vUF+lx756NouWccpNICNSKveJ7+S39gR2YWSh6ZA01qQ51PuXnXtiSQmHxcBV9ehf9thHD
 GF/sAniOlmHu+exup8Q==
X-Proofpoint-GUID: _5TZqgycK-0tN8sAQm7qkikK7EjQtz6S
X-Authority-Analysis: v=2.4 cv=L/CI0OT8 c=1 sm=1 tr=0 ts=6ad1d74d cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=Um2Pa8k9VHT-vaBCBUpS:22 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=LElf2VvS5UWv9C91Qe8A:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-14_01,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 malwarescore=0 spamscore=0 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 phishscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610160031
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_005038_107114_1334AFDD 
X-CRM114-Status: GOOD (  16.30  )
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

T24gRnJpLCBPY3QgMTYsIDIwMjYgYXQgMTI6MjDigK9BTSBHZW9yZ2UgTmVhY3N1IHZpYSBCNCBS
ZWxheQo8ZGV2bnVsbCtnZW9jYXVzYS5nbWFpbC5jb21Aa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBG
cm9tOiBHZW9yZ2UgTmVhY3N1IDxnZW9jYXVzYUBnbWFpbC5jb20+Cj4KPiBDU0lEIDY4MCBoYXMg
YSBQSFkgdHlwZSBzZWxlY3QgaW4gQ1NJMl9SWF9DRkcwLCBuZXh0IHRvIHRoZSBQSFkgbnVtYmVy
Lgo+IFRoZSBmaWVsZCBpcyBkZWZpbmVkIGJ1dCBuZXZlciB3cml0dGVuLCBzbyB0aGUgcmVjZWl2
ZXIgYWx3YXlzIGRlY29kZXMKPiBELVBIWS4gV3JpdGUgcGh5X3NlbCB0byBpdCwgYXMgY3NpZC1n
ZW4yIGRvZXMgZm9yIEMtUEhZLgo+Cj4gQXNzaXN0ZWQtYnk6IENsYXVkZTpjbGF1ZGUtb3B1cy01
LTUKPiBTaWduZWQtb2ZmLWJ5OiBHZW9yZ2UgTmVhY3N1IDxnZW9jYXVzYUBnbWFpbC5jb20+CgpJ
dCB3b3VsZCBiZSBldmVuIGJldHRlciB3aXRoIHByb3BlciBtYXNraW5nL0ZJRUxEX1BSRVAuCgpS
ZXZpZXdlZC1ieTogTG9pYyBQb3VsYWluIDxsb2ljLnBvdWxhaW5Ab3NzLnF1YWxjb21tLmNvbT4K
Cj4gLS0tCj4gIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy1jc2lkLTY4
MC5jIHwgMiArKwo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLWNzaWQtNjgwLmMg
Yi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtY3NpZC02ODAuYwo+IGlu
ZGV4IDM0NWE2N2M4Zi4uMTZiMTk5ZjA2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vcWNvbS9jYW1zcy9jYW1zcy1jc2lkLTY4MC5jCj4gKysrIGIvZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLWNzaWQtNjgwLmMKPiBAQCAtMjAyLDYgKzIwMiw4IEBA
IHN0YXRpYyB2b2lkIF9fY3NpZF9jb25maWd1cmVfcngoc3RydWN0IGNzaWRfZGV2aWNlICpjc2lk
LAo+ICAgICAgICAgICAgICAgICAgICAgICAgIDw8IENTSTJfUlhfQ0ZHMF9QSFlfTlVNX1NFTDsK
PiAgICAgICAgIH0KPgo+ICsgICAgICAgdmFsIHw9IHBoeS0+cGh5X3NlbCA8PCBDU0kyX1JYX0NG
RzBfUEhZX1RZUEVfU0VMOwo+ICsKPiAgICAgICAgIHdyaXRlbCh2YWwsIGNzaWQtPmJhc2UgKyBD
U0lEX0NTSTJfUlhfQ0ZHMCk7Cj4KPiAgICAgICAgIHZhbCA9IENTSTJfUlhfQ0ZHMV9QQUNLRVRf
RUNDX0NPUlJFQ1RJT05fRU47Cj4KPiAtLQo+IDIuNTMuMAo+Cj4KCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
